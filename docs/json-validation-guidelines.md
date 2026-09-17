# JSON validation guidelines

This repository now validates token resource JSON files with JSON Schema.

## Covered directories

- `gno-native/*.json` → `schemas/gno-native.schema.json`
- `grc20/*.json` → `schemas/grc20.schema.json`

## What is enforced

### Structure (JSON Schema)

- Each file must be a JSON array.
- Each token entry must use the expected object shape for its directory.
- Unknown fields are rejected.
- `decimals` must be a non-negative integer.
- `description` must be non-empty and must not exceed 1,500 characters.
- URL fields accept either a valid URI or an empty string.
- Image paths must point to the matching directory and use `.svg`.

### `routes` (GRC20 only, optional)

`routes` describes how a consumer builds a direct `MsgCall` into the token realm.
See [`CONTRIBUTING.md`](../CONTRIBUTING.md#optional-routes) for the field semantics.

- `routes` is optional. When present it must contain `funcs`, and nothing else.
- Operation keys in `funcs` are lowercase snake_case. The set is open, so a realm
  may declare operations beyond `transfer` / `approve` / `transfer_from`.
- Each operation must provide `name` and `args`, and nothing else.
- `name` must be an exported Gno identifier: an uppercase first letter followed by
  letters, digits, or `_`.
- Every element of `args` must be a string.
- A string that starts with `$` must be a defined placeholder (`$to`, `$from`,
  `$spender`, `$owner`, `$amount`) or a `$$`-escaped literal. This is the rule that
  catches typos such as `$reciever`, which would otherwise be sent to the chain
  silently as a literal argument.
- `transfer` must contain exactly one `$to` and one `$amount`.
- `approve` must contain exactly one `$spender` and one `$amount`.
- `transfer_from` must contain exactly one `$from`, one `$to`, and one `$amount`.

### Cross-field rules (`scripts/validate-json.sh`)

JSON Schema cannot compare two fields of the same object, so these run as `jq`
checks after schema validation:

- `token_path` must equal `pkg_path` + `.` + `symbol`. `token_path` is the registry
  key, and route lookups depend on it.
- Within one `args` list, a placeholder may not appear more than once. The schema
  already enforces this for the three known operations; the script extends it to
  every operation, including ones added later.

## What is intentionally not enforced yet

The first version focuses on structure and required fields without breaking the current dataset.

- The filename does not need to match every entry's `chain_id`.
- Cross-file uniqueness is not checked.
- `routes` is not checked against the chain. A route must be verified by hand
  against the deployed realm on the matching chain RPC before it is added.

Those rules can be added later after the existing data is normalized.

## How validation runs

A GitHub Action (`.github/workflows/validate-json.yml`) runs `./scripts/validate-json.sh` on every pull request and on pushes to `main`, so contributor changes are checked before merge.

## Run validation locally

```shell
python3 -m pip install check-jsonschema
./scripts/validate-json.sh
```

If your Python is externally managed, install the CLI with `uv tool install check-jsonschema` instead.
The script also needs `jq` for the cross-field checks.

## Updating schemas

When you add a new required field or change a JSON shape:

1. Update the matching schema in `schemas/`.
2. Update the contributor guidance in `CONTRIBUTING.md`.
3. Run `./scripts/validate-json.sh` locally.
4. Confirm the GitHub Action passes in your pull request.
