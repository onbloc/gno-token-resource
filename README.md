# gno.land Token Resources

This repository is a comprehensive and up-to-date collection of information related to tokens on gno.land, including Gno-native, GRC20, IBC-native, and IBC-tokens.

As we embrace true decentralization and permissionless platforms on gno.land, we allow anyone to submit information about their tokens and any products or services to freely use the token resources in this repository. Our goal is to provide the community with the necessary resources to develop and innovate on the gno.land blockchain, in a collaborative and open-source manner.

## Products that use this repository

- [Adena](https://adena.app/)
- [GnoScan](https://gnoscan.io/)
- [GnoSwap](https://beta.gnoswap.io/)

## How to add your token

<details>
  <summary><h2 style='display: inline; font-size: 16px'>Gno-native</h2></summary>

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
     - `id`: The id of your token. This must be unique value
     - `name`: The name of your token to be displayed. Please capitalize the first letter.
     - `denom`: The denom of your token.
     - `symbol`: The abbreviation of your token's name, AKA the ticker. Please capitalize all letters.
     - `decimals`: The decimals of your token.
     - `chain_id`: The chain ID of your token.
     - `description`: A description of your token. You can write up to 1,500 letters.
     - `website_url`: The Website URL of your token.
     - `twitter_url`: The Twitter URL of your token.
     - `discord_url`: The Discord URL of your token.
     - `docs_url`: The Docs URL of your token.
     - `image`: The location of the image of your token.
       - Use the `svg` format and set the file's name as <YOUR-TOKEN-SYMBOL.svg>
       - Add the image file in `/gno-native/images` folder.

4. Add the token information to `/gno-native/{CHAIN_ID}.json`

---

```json
// An example with gno.land
// {CHAIN_ID}.json file located in /gno-native/
[
  {
    "id": "ugnot",
    "name": "gno.land",
    "denom": "ugnot",
    "symbol": "GNOT",
    "decimals": 6,
    "chain_id": "test9",
    "description": "Gno.land is a layer-1 blockchain that integrates a series of cutting-edge technologies, including Tendermint2, GnoVM, the Proof-of-Contribution consensus mechanism, on-chain governance through a new DAO framework with support for sub-DAOs, and a unique licensing model that enables built-in monetization of open-source code.",
    "website_url": "https://gno.land/",
    "twitter_url": "https://x.com/_gnoland",
    "discord_url": "https://discord.gg/CMHMzbjNxv",
    "docs_url": "https://docs.gno.land",
    "image": "/gno-native/images/ugnot.svg"
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
</details>

<details>
  <summary><h2 style='display: inline; font-size: 16px'>GRC20</h2></summary>

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
     - `pkg_path`: The package path of your GRC20 realm.
     - `symbol`: The abbreviation your token's name, AKA the ticker. Please capitalize all letters.
     - `decimals`: The decimals of your token.
     - `chain_id`: The chain ID of your token.
     - `description`: A description of your token. You can write up to 1,500 letters.
     - `website_url`: The Website URL of your token.
     - `twitter_url`: The Twitter URL of your token.
     - `discord_url`: The Discord URL of your token.
     - `docs_url`: The Docs URL of your token.
     - `image`: The location of the image of your token.
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
    "pkg_path": "gno.land/r/demo/foo20",
    "symbol": "FOO",
    "decimals": 4,
    "chain_id": "test9",
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
</details>

<details>
  <summary><h2 style='display: inline; font-size: 16px'>IBC-native</h2></summary>

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
     - `denom`: The denom of your token.
     - `chain`: The origin chain that the token was issued from.
     - `symbol`: The abbreviation your token's name, AKA the ticker. Please capitalize all letters.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up to 1,500 letters.
     - `website_url`: The Website URL of your token.
     - `twitter_url`: The Twitter URL of your token.
     - `discord_url`: The Discord URL of your token.
     - `docs_url`: The Docs URL of your token.
     - `image`: The location of the image of your token.
       - Use the `svg` format and set the file's name to <YOUR-TOKEN-SYMBOL.svg>
       - Add the image file in `/ibc-native/images` folder.

4. Add the token information to `/ibc-native/{CHAIN_ID}.json`

---

```json
// An example with Cosmos
// {CHAIN_ID}.json file located in /ibc-native/
[
  {
    "name": "Cosmos",
    "denom": "uatom",
    "chain_id": "test9",
    "symbol": "ATOM",
    "decimals": 6,
    "description": "The ATOM token is the native token of the Cosmos Hub. In return for securing the Hub's services by staking ATOM, transaction fees and staking rewards are distributed to the Cosmos Hub.",
    "website_url": "https://cosmos.network/",
    "twitter_url": "",
    "discord_url": "",
    "docs_url": "",
    "image": "/ibc-native/images/atom.svg"
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
</details>

<details>
  <summary><h2 style='display: inline; font-size: 16px'>IBC-tokens</h2></summary>

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
     - `denom`: The denom of your token.
     - `chain_id`: The chain ID of your token.
     - `origin_chain`: The origin chain that your token was issued from.
     - `origin_denom`: The origin denom of your token.
     - `origin_type`: The origin type of your token (staking, native, pool, ibc, bridge, cw20, or erc20).
     - `symbol`: The abbreviation your token's name, AKA the ticker. Please capitalize all letters.
     - `decimals`: The decimals of your token.
     - `path`: The path way that your IBC token has traveled through from the origin chain.
     - `channel`: The channel of the chain that your IBC token is currently on.
     - `port`: The port of your IBC token.
     - `image`: The location of the image of your token.
       - Use the `svg` format and set the file's name to <YOUR-TOKEN-SYMBOL.svg>
       - Add the image file in `/ibc-tokens/images` folder.

4. Add the token information to `/ibc-tokens/{CHAIN_ID}.json`

---

```json
// An example with Cosmos
// {CHAIN_ID}.json file located in /ibc-tokens/
[
  {
    "denom": "ibc/27394FB092D2ECCD56123C74F36E4C1F926001CEADA9CA97EA622B25F41E5EB2",
    "denom": "test9",
    "origin_chain": "cosmos",
    "origin_denom": "uatom",
    "origin_type": "native",
    "symbol": "ATOM",
    "decimals": 6,
    "path": "cosmos>osmosis", //The IBC Atom token is on the Osmosis chain
    "channel": "channel-0", //A channel of the Osmosis chain
    "port": "transfer",
    "image": "/ibc-tokens/images/atom.svg" //Optional
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
</details>

## Disclaimer

The Onbloc team ("we") allows anyone to submit new tokens to this repository. However, this does not mean that we are in direct partnership with all of the projects. Although we thoroughly review the submissions, we do not guarantee the integrity of projects on this repository. The approval of a submission is not an endorsement nor investment advice of any assets. Also, we will reject projects that are deemed as scams or fraudulent after careful review. We reserve the right to change the terms of submissions of token information at any time due to changing market conditions, risk of fraud, or any other factors we deem relevant.

## License

Copyright © Onbloc Co., Ltd. All rights reserved. This repository is licensed under the [MIT license](https://GitHub.com/onbloc/gno-token-resource/blob/main/LICENSE).
