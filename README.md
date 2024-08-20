# DegenToken Smart Contract

This repository contains the `DegenToken` smart contract, an ERC20 token with minting, burning, transferring, and game store functionalities.

## Contract Functions

- **mint**: `function mint(address to, uint256 amount) public onlyOwner`
  - Mints tokens to the specified address. Only the owner can call this.

- **transferTokens**: `function transferTokens(address _receiver, uint amount) external`
  - Transfers tokens from the caller to the specified receiver.

- **checkBalance**: `function checkBalance() external view returns (uint)`
  - Returns the balance of the caller.

- **burnTokens**: `function burnTokens(uint amount) external`
  - Burns the specified amount of tokens from the caller's account.

- **gameStore**: `function gameStore() public pure returns (string memory)`
  - Returns a list of items available in the game store.

- **redeemTokens**: `function redeemTokens(uint choice) external payable`
  - Redeems tokens for items from the store based on the user's choice.
## Getting Started

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

#### Prerequisites
➛ ```Remix IDE```: A web-based integrated development environment for Ethereum smart contracts (https://remix.ethereum.org) to access the IDE.
➛ ```MetaMask```: A browser extension wallet for interacting with Ethereum-based applications.

#### Deployment on Remix IDE
1. Open the remix ide in your web browser.
2. Create a new file in Remix IDE.
3. Compile the contract by selecting the appropriate Solidity compiler version in Remix IDE and clicking the "Compile" button.
4. Connect MetaMask to Remix IDE by clicking on the MetaMask extension icon in your browser and following the instructions to log in.
5. Deploy the contract by clicking the "Deploy & Run Transactions" tab in Remix IDE.
6. Click the "Deploy" button to deploy the contract to the selected testnet.
7. Confirm the transaction in MetaMask and wait for the contract to be deployed. Once deployed, you will see the contract address in the Remix IDE.

#### Connection
1. Go to Snowtrace website.

2. Copy the contract address from Remix IDE and paste into the search bar on the Snowtrace.

3. You can now get the informations about the functions.

## Help
If you encounter any issues or have questions about this project, there are several resources available to assist you:

### Documentation
Solidity Documentation: Comprehensive documentation for the Solidity programming language, including syntax and features. Visit Solidity Documentation.
Remix Documentation: Learn how to use Remix, the online Solidity IDE, with detailed guides and examples. Visit Remix Documentation.

### Contact
If you need further assistance, feel free to reach out:

Email: contactkirtann@gmail.com 
GitHub Issues: Report issues or suggest enhancements on our GitHub Issues page.  

  
#### Community  
Join the community to discuss the project and get help from other user:
LinekdIn: [@KirtanNahar](https://www.linkedin.com/in/notkirtann/)     
I hope this information helps you get the most out of our Blockchain Message Manager Smart Contract project. If you have any feedback or suggestions, please let us know!

## Authors

Kirtan Nahar                                                                                                                      
[@KirtanNahar](https://www.linkedin.com/in/notkirtann/)

## License

This project is licensed under the Apache 2.0 License - see the LICENSE.md file for details    
> **Note**: This content is proprietary and confidential. Unauthorized copying, modification, distribution, or use of this content is strictly prohibited without explicit permission from the owner.


##### Copyright (c) 2024 notkirtann

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: