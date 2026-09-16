# Contribution Guide

## How to add your token

### GRC20

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
    "image": "/grc20/images/foo.svg"
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

## Validate your changes

CI validates all token resource JSON files against their directory-specific schemas on every pull request and push to `main`. Before opening a pull request, follow the [JSON validation guidelines](./docs/json-validation-guidelines.md) and run the validation locally.
