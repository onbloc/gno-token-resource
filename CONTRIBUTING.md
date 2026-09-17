# Contribution Guide

## How to add your token

1. Fork this repo to your own GitHub account
2. Clone your fork and create a new branch

   ```shell
   git clone git@GitHub.com:<YOUR_ACCOUNT>/gno-token-resource.git
   cd gno-token-resource
   git branch <BRANCH_NAME>
   git checkout <BRANCH_NAME>
   ```

3. Add information about your token to be displayed
   - Required information:
     - `name`: The name of your token to be displayed. Please capitalize the first letter.
     - `token_path`: The token path of your GRC20 realm (e.g., `gno.land/r/demo/foo20.FOO`).
     - `pkg_path`: The package path of your GRC20 realm.
     - `symbol`: The abbreviation your token's name, AKA the ticker. Please capitalize all letters.
     - `decimals`: The decimals of your token.
     - `chain_id`: The chain ID of your token.
     - `description`: A description of your token. You can write up to 1,500 letters.
     - `website_url`: The Website URL of your token.
     - `twitter_url`: The Twitter URL of your token.
     - `discord_url`: The Discord URL of your token.
     - `docs_url`: The Docs URL of your token.
     - `image` (optional): The location of the image of your token.
       - Use the `svg` format and set the file's name to <YOUR-TOKEN-SYMBOL.svg>
       - Add the image file in `/grc20/images` folder.
     - `routes` (optional): How a wallet builds a direct `MsgCall` into your realm.
       See [Optional: `routes`](#optional-routes) below.

   `token_path` must always equal `pkg_path` + `.` + `symbol`. CI rejects entries
   that break this.

4. Add the token information to `/grc20/{CHAIN_ID}.json`

---

```json
// An example with Foo
// {CHAIN_ID}.json file located in /grc20/
[
  {
    "name": "Foo",
    "token_path": "gno.land/r/demo/foo20.FOO",
    "pkg_path": "gno.land/r/demo/foo20",
    "symbol": "FOO",
    "decimals": 4,
    "chain_id": "gnoland-1",
    "description": "Foo is a test realm of GRC20",
    "website_url": "https://foo.com",
    "twitter_url": "",
    "discord_url": "",
    "docs_url": "",
    "image": "/grc20/images/foo.svg",
    "routes": {
      "funcs": {
        "transfer": { "name": "Transfer", "args": ["$to", "$amount"] },
        "approve": { "name": "Approve", "args": ["$spender", "$amount"] },
        "transfer_from": { "name": "TransferFrom", "args": ["$from", "$to", "$amount"] }
      }
    }
  }
]
```

5. Commit and push to your forked repo

   ```shell
   git add -A
   git commit -m “Add <YOUR-TOKEN-SYMBOL>”
   git push origin <BRANCH_NAME>
   ```

6. Make a pull request from your forked repo to `main`

## Optional: `routes`

A GRC20 realm is the only place a user transfer can go: `grc20reg` cannot move a
user's balance, because its write wrapper acts as the calling realm and
`grc20.CallerTeller` sits behind the home-realm guard on `*PrivateLedger`. So a
wallet has to call your realm directly. It can derive the destination realm from
`pkg_path`, but it cannot guess the **call shape** — argument counts, order, and
function names are not uniform across realms.

`routes` declares that call shape. It is optional and fully backward compatible.

```json
"routes": {
  "funcs": {
    "transfer": { "name": "Transfer", "args": ["$to", "$amount"] },
    "approve": { "name": "Approve", "args": ["$spender", "$amount"] },
    "transfer_from": { "name": "TransferFrom", "args": ["$from", "$to", "$amount"] }
  }
}
```

A consumer assembles the call as:

```
MsgCall{ PkgPath: pkg_path, Func: funcs[op].name, Args: funcs[op].args.map(substitute) }
```

### Rules

| Item | Rule |
|---|---|
| `routes` | Optional. **Absent means consumers fall back to `MsgRun` via `grc20reg`.** |
| `routes.funcs` | `Record<op, { name, args }>`. The operation set is **open** — today `transfer` / `approve` / `transfer_from`, extend it when needed. |
| A missing `funcs.<op>` | Means the realm does not expose that operation to users. This is a **deliberate declaration, not an omission** — a wallet should disable the action rather than fall back. |
| `name` | The exported function name. Uppercase first letter, then letters, digits, or `_`. |
| Destination realm | **Not a field.** It is always `pkg_path`. A separate field would let a route aim at someone else's realm and would split the source of truth in two. |

There is deliberately no `source` or `verified_at` field. A consumer decides how
much to trust a route from *which layer it came from* at runtime, not from a
self-reported claim in the file.

### `args` — the full positional argument list

`args` lists every argument **except** the leading `cur realm`, in declaration
order. Each element is one of two things:

| Form | Meaning |
|---|---|
| A string starting with `$` | A **placeholder**. The consumer fills it with a runtime value. |
| Any other string | A **literal**. It goes into the `MsgCall` argument list verbatim. |

Placeholders: `$to`, `$from`, `$spender`, `$owner`, `$amount`.
To use a literal that really does start with `$`, escape it as `$$` (`"$$foo"`
becomes the argument `"$foo"`).

### Why literals matter

A factory realm hosts several tokens, so it needs an argument saying which token
to move. That value is fixed per token, so it belongs in the metadata:

```json
"transfer": { "name": "Transfer", "args": ["FOO", "$to", "$amount"] },
"approve": { "name": "Approve", "args": ["FOO", "$spender", "$amount"] },
"transfer_from": { "name": "TransferFrom", "args": ["FOO", "$from", "$to", "$amount"] }
```

This calls `Transfer(cur, "FOO", to, amount)`.

**A literal may sit anywhere in the list**, and there may be more than one. The
symbol-first ordering is a convention; neither `p/nt/grc20` nor any contract
enforces it, so the position is left open:

```json
"transfer": { "name": "Transfer", "args": ["$to", "$amount", "FOO"] }
```

```json
"transfer": { "name": "VoucherSend", "args": ["$to", "ibc/27394FB0.../FOO", "$amount"] }
```

```json
"transfer": { "name": "Send", "args": ["myorg", "FOO", "$to", "$amount"] }
```

### A realm that exposes nothing

Declare an empty `funcs` when the realm has no user-callable transfer surface at
all. `gno.land/r/gnoswap/gov/xgns` is non-transferable — on-chain it only has
`Mint` and `Burn` — so it carries:

```json
"routes": { "funcs": {} }
```

An empty `funcs` is not the same as a missing `routes`: it tells a wallet to
disable the transfer UI instead of falling back to `MsgRun` and failing.

### Before you add a route

Read the **deployed** realm on the chain the file targets and copy the signature
from there. Do not copy from a `master` branch or from another chain's file — the
same symbol can have a different path or a different signature per chain. That is
also why `routes` lives inside each `<chain_id>.json` rather than in a shared file.

Consumers must only ever take literals from this repository (or from a future
on-chain route response). User input must never reach `args`.

## Validate your changes

CI validates all token resource JSON files against their directory-specific schemas on every pull request and push to `main`. Before opening a pull request, follow the [JSON validation guidelines](./docs/json-validation-guidelines.md) and run the validation locally.
