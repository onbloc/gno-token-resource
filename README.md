# Gnoland Token Resources
This repository is a comprehensive and up-to-date colloection of information related to Gnoland tokens, including Gno-native, GRC20, IBC-native, and IBC-tokens.

 As we embrace true decentralization and permissionless platforms on top of Gnoland, anyone can submit information about their tokens and any products or services can freely use the token resources in this repo. Our goal is to provide the community with the necessary resources to develop and innovate on the Gnoland blockchain, in a collaborative and open-source manner.

## Products that use this repository
- [Adena](https://adena.app/)
- [Gnoscan](https://gnoscan.io/)

## How to add your token

<details>
  <summary><h2 style='display: inline; font-size: 16px'>Gno-native</h2></summary>

1. Fork this repo to your own github account
2. Clone your fork and create a new branch

   ```shell
   git clone git@github.com:YOUR_ACCOUNT/gno-token-resource.git
   cd gno-token-resource
   git branch <branch_name>
   git checkout <branch_name>
   ```

3. Add information about your token to be displayed
   - Required information:
     - `name`: The name of your token to be displayed. Please make the first letter capital.
     - `denom`: The denom of your token.
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters capital.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up upto 1500 letters. 
     - `website_url`: The Website URL of your token. 
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <YOUR-TOKEN-SYMBOL.svg>
         - Add the image file in `/images/gno-native` folder.


4. Make the name of your json file as <YOUR-TOKEN-SYMBOL.json>, and locate it in `/tokens/gno-native/<YOUR-TOKEN-SYMBOL>.json`

---

  ```json
  // An example with Gnoland
  // located in /tokens/gno-native/gnot.json
  [
    {
      "name": "Gnoland", 
      "denom": "ugnot", 
      "symbol": "GNOT",
      "decimals": 6, 
      "description": "Gno.land is a layer-1 blockchain that integrates various cutting-edge technologies, including Tendermint2, GnoVM, Proof-of-Contributions consensus mechanism, on-chain governance through a new DAO framework with support for sub-DAOs, and a unique licensing model that allows open-source code to be monetized by default.", 
      "website_url": "https://gno.land/",
      "image": "/images/gno-native/gnot.svg",
    }
  ]
  ```

5. Commit and push it to your fork repository

   ```shell
   git add -A
   git commit -m “Add <YOUR-TOKEN-SYMBOL>”
   git push origin <branch_name>
   ```

6. Make a pull request from your fork repository to main
</details>


<details>
  <summary><h2 style='display: inline; font-size: 16px'>GRC20</h2></summary>

1. Fork this repo to your own github account
2. Clone your fork and create a new branch

   ```shell
   git clone git@github.com:YOUR_ACCOUNT/gno-token-resource.git
   cd gno-token-resource
   git branch <branch_name>
   git checkout <branch_name>
   ```

3. Add information about your token to be displayed
   - Required information:
     - `name`: The name of your token to be displayed. Please make the first letter capital.
     - `pkg_path`: The package path of your GRC20 realm.
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters capital.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up upto 1500 letters. 
     - `website_url`: The Website URL of your token. 
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <YOUR-TOKEN-SYMBOL.svg>
         - Add the image file in `/images/grc20` folder.


4. Make the name of your json file as <YOUR-TOKEN-SYMBOL.json>, and locate it in `/tokens/grc20/<YOUR-TOKEN-SYMBOL>.json`

---

  ```json
  // An example with Foo
  // located in /tokens/grc20/foo.json
  [
    {
      "name": "Foo", 
      "pkg_path": "gno.land/r/demo/foo20", 
      "symbol": "FOO",
      "decimals": 4, 
      "description": "Foo is a test realm of GRC20", 
      "website_url": "https://foo.com",
      "image": "/images/grc20/foo.svg",
    }
  ]
  ```

5. Commit and push it to your fork repository

   ```shell
   git add -A
   git commit -m “Add <YOUR-TOKEN-SYMBOL>”
   git push origin <branch_name>
   ```

6. Make a pull request from your fork repository to main
</details>


<details>
  <summary><h2 style='display: inline; font-size: 16px'>IBC-native</h2></summary>

1. Fork this repo to your own github account
2. Clone fork and create new branch

   ```shell
   git clone git@github.com:YOUR_ACCOUNT/gno-token-resource.git
   cd gno-token-resource
   git branch <branch_name>
   git checkout <branch_name>
   ```

3. Add information about your token to be displayed
   - Required information:
     - `name`: The name of your token to be displayed. Please make the first letter capital.
     - `denom`: The denom of your token.
     - `chain`: The origin chain that the token was issued from.
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters with capital.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up upto 1500 letters. 
     - `website_url`: The Website URL of your token. 
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <YOUR-TOKEN-SYMBOL.svg>
         - Add the image file in `/images/ibc-native` folder.


4. Make the name of your json file as <YOUR-TOKEN-SYMBOL.json>, and locate it in `/tokens/ibc-native/<YOUR-TOKEN-SYMBOL>.json`

---

  ```json
  // An example with Cosmos
  // located in /tokens/ibc-native/atom.json
  [
    {
      "name": "Cosmos", 
      "denom": "uatom", 
      "symbol": "ATOM",
      "decimals": 6, 
      "description": " ", 
      "website_url": "https://cosmos.network/",
      "image": "/images/ibc-native/atom.svg",
    }
  ]
  ```

5. Commit and push it to your fork repository

   ```shell
   git add -A
   git commit -m “Add <YOUR-TOKEN-SYMBOL>”
   git push origin <branch_name>
   ```

6. Make a pull request from your fork repository to main
</details>


<details>
  <summary><h2 style='display: inline; font-size: 16px'>IBC-tokens</h2></summary>

1. Fork this repo to your own github account
2. Clone your fork and create a new branch

   ```shell
   git clone git@github.com:YOUR_ACCOUNT/gno-token-resource.git
   cd gno-token-resource
   git branch <branch_name>
   git checkout <branch_name>
   ```

3. Add information about your token to be displayed
   - Required information:
     - `denom`: The denom of your token.
     - `origin_chain`: The origin chain that your token was issued from.
     - `origin_denom`: The origin denom of your token.
     - `origin_type`: The origin type of your token (staking, native, pool, ibc, bridge, cw20, erc20).
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters with capital.
     - `decimals`: The decimals of your token.
     - `path`: The path way that your IBC token has gone through from the origin chain.
     - `channel`: The channel of the chain that your IBC token is currently at.
     - `port`: The port of your IBC tokens.
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <YOUR-TOKEN-SYMBOL.svg>
         - Add the image file in `/images/ibc-tokens` folder.


4. Make the name of your json file as <YOUR-TOKEN-SYMBOL.json>, and locate it in `/tokens/ibc-tokens/atom.json`

---

  ```json
  // An example with Cosmos
  // located in /tokens/ibc-tokens/atom.json
  [
    {
      "denom": "ibc/27394FB092D2ECCD56123C74F36E4C1F926001CEADA9CA97EA622B25F41E5EB2",
      "origin_chain": "cosmos",
      "origin_denom": "uatom",
      "origin_type": "native",
      "symbol": "ATOM",
      "decimals": 6,
      "path": "cosmos>osmosis", //The IBC Atom token is at the Osmosis chain
      "channel": "channel-0", //A channel of the Osmosis chain 
      "port": "transfer",
      "image": "/images/ibc-tokens/atom.svg", //Optional
    }
  ]
  ```

5. Commit and push it to your fork repository

   ```shell
   git add -A
   git commit -m “Add <YOUR-TOKEN-SYMBOL>”
   git push origin <branch_name>
   ```

6. Make a pull request from your fork repository to main
</details>



## Disclaimer
The Onbloc team ("we") allows anyone to submit new tokens to this repository. However, this does not mean that we are in direct partnership with all of the projects. Although we thoroughly review the submissions, we do not guarantee the integrity of projects on this repository. The approval of a submission is not an endorsement nor investment advice of any assets. Also, we will reject projects that are deemed as scams or fraudulent after careful review. We reserve the right to change the terms of submissions of token information at any time due to changing market conditions, risk of fraud, or any other factors we deem relevant.

## License
Copyright © Onbloc Co., Ltd. All rights reserved. This repository is licensed under the [MIT license](https://github.com/onbloc/gno-token-resource/blob/main/LICENSE).
