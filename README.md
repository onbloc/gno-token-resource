# Gnoland Token Resources
This repository contains a comprehensive, up-to-date colloection of information about Gnoland-related tokens such as Gno-Native, GRC20, IBC-Native, and IBC Tokens.

As the permissionless nature of the Gnoland blockchain and services using this repository with, everyone can submit information of their tokens freely. See How to add your token for the details.

## Products using this repository
- [Adena](https://adena.app/)
- [Gnoscan](https://gnoscan.io/)

## How to add your token

<details>
  <summary><h2 style='display: inline; font-size: 16px'>Gno-Native</h2></summary>

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
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters with capital.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up upto 1500 letters. 
     - `website_url`: The Website URL of your token. 
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <your-token-symbol.svg>
         - Add the image file in `/images/tokens/gno-native` folder.


4. Make the name of your json file as <your-token-symbol.json>, and locate it in `/tokens/gno-native/gnot.json`

---

  ```json
  // An example with Gnoland
  // /tokens/gno-native/gnot.json
  [
    {
      "name": "Gnoland", 
      "denom": "ugnot", 
      "symbol": "GNOT",
      "decimals": 6, 
      "description": "Gno.land is a layer-1 blockchain that integrates various cutting-edge technologies, including Tendermint2, GnoVM, Proof-of-Contributions consensus mechanism, on-chain governance through a new DAO framework with support for sub-DAOs, and a unique licensing model that allows open-source code to be monetized by default. 
      
      Gno.land aims to offer security, high-quality contract libraries, and scalability to other Gnolang chains, while also prioritizing interoperability with existing and emerging chains. 
      
      Post mainnet launch, Gno.land aims to integrate IBCv1 to connect with existing Cosmos chains and implement ICS1 for security through the existing chains. Afterwards, the platform plans to improve IBC by adding new capabilities for interchain smart-contracts.", 
      "website_url": "https://gno.land/",
      "image": "images/tokens/gno-native/gnot.svg",
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
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters with capital.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up upto 1500 letters. 
     - `website_url`: The Website URL of your token. 
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <your-token-symbol.svg>
         - Add the image file in `/images/tokens/gno-native` folder.


4. Make the name of your json file as <your-token-symbol.json>, and locate it in `/tokens/gno-native/gnot.json`

---

  ```json
  // An example with Gnoland
  // /tokens/gno-native/gnot.json
  [
    {
      "name": "Gnoland", 
      "denom": "ugnot", 
      "symbol": "GNOT",
      "decimals": 6, 
      "description": "Gno.land is a layer-1 blockchain that integrates various cutting-edge technologies, including Tendermint2, GnoVM, Proof-of-Contributions consensus mechanism, on-chain governance through a new DAO framework with support for sub-DAOs, and a unique licensing model that allows open-source code to be monetized by default. 
      
      Gno.land aims to offer security, high-quality contract libraries, and scalability to other Gnolang chains, while also prioritizing interoperability with existing and emerging chains. 
      
      Post mainnet launch, Gno.land aims to integrate IBCv1 to connect with existing Cosmos chains and implement ICS1 for security through the existing chains. Afterwards, the platform plans to improve IBC by adding new capabilities for interchain smart-contracts.", 
      "website_url": "https://gno.land/",
      "image": "images/tokens/gno-native/gnot.svg",
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

---

<details>
  <summary><h2 style='display: inline; font-size: 16px'>IBC-Native</h2></summary>

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
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters with capital.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up upto 1500 letters. 
     - `website_url`: The Website URL of your token. 
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <your-token-symbol.svg>
         - Add the image file in `/images/tokens/gno-native` folder.


4. Make the name of your json file as <your-token-symbol.json>, and locate it in `/tokens/gno-native/gnot.json`

---

  ```json
  // An example with Gnoland
  // /tokens/gno-native/gnot.json
  [
    {
      "name": "Gnoland", 
      "denom": "ugnot", 
      "symbol": "GNOT",
      "decimals": 6, 
      "description": "Gno.land is a layer-1 blockchain that integrates various cutting-edge technologies, including Tendermint2, GnoVM, Proof-of-Contributions consensus mechanism, on-chain governance through a new DAO framework with support for sub-DAOs, and a unique licensing model that allows open-source code to be monetized by default. 
      
      Gno.land aims to offer security, high-quality contract libraries, and scalability to other Gnolang chains, while also prioritizing interoperability with existing and emerging chains. 
      
      Post mainnet launch, Gno.land aims to integrate IBCv1 to connect with existing Cosmos chains and implement ICS1 for security through the existing chains. Afterwards, the platform plans to improve IBC by adding new capabilities for interchain smart-contracts.", 
      "website_url": "https://gno.land/",
      "image": "images/tokens/gno-native/gnot.svg",
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

---

<details>
  <summary><h2 style='display: inline; font-size: 16px'>IBC Tokens</h2></summary>

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
     - `symbol`: A short version of your token name, AKA a ticker. Please make all letters with capital.
     - `decimals`: The decimals of your token.
     - `description`: A description of your token. You can write up upto 1500 letters. 
     - `website_url`: The Website URL of your token. 
     - `image`: The image route of your token. 
         - Use the `svg` format and make the file's name as <your-token-symbol.svg>
         - Add the image file in `/images/tokens/gno-native` folder.


4. Make the name of your json file as <your-token-symbol.json>, and locate it in `/tokens/gno-native/gnot.json`

---

  ```json
  // An example with Gnoland
  // /tokens/gno-native/gnot.json
  [
    {
      "name": "Gnoland", 
      "denom": "ugnot", 
      "symbol": "GNOT",
      "decimals": 6, 
      "description": "Gno.land is a layer-1 blockchain that integrates various cutting-edge technologies, including Tendermint2, GnoVM, Proof-of-Contributions consensus mechanism, on-chain governance through a new DAO framework with support for sub-DAOs, and a unique licensing model that allows open-source code to be monetized by default. 
      
      Gno.land aims to offer security, high-quality contract libraries, and scalability to other Gnolang chains, while also prioritizing interoperability with existing and emerging chains. 
      
      Post mainnet launch, Gno.land aims to integrate IBCv1 to connect with existing Cosmos chains and implement ICS1 for security through the existing chains. Afterwards, the platform plans to improve IBC by adding new capabilities for interchain smart-contracts.", 
      "website_url": "https://gno.land/",
      "image": "images/tokens/gno-native/gnot.svg",
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
Onbloc team allows anyone to submit new assets to this repository. However, this does not mean that we are in direct partnership with all of the projects.
Onbloc team will reject projects that are deemed as scam or fraudulent after careful review. Onbloc team reserves the right to change the terms of asset submissions at any time due to changing market conditions, risk of fraud, or any other factors we deem relevant.
Additionally, spam-like behavior, including but not limited to mass distribution of tokens to random addresses will result in the asset being flagged as spam and possible removal from the repository.

## License
