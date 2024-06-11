# ETH-BEGGINER-COURSE
## FINAL PROJECT - MyToken

Hey! This code is designed to create a token on the Ethereum blockchain. It perform operatons such as token creation (minting) and token destruction (burning). The token is named "Ubuntu" with the symbol "UB". It keeps track of the total supply and the balances of each address in the ethereum.
## Description

The Ubuntu(UB) token contract offers essential token functionalities on the Ethereum blockchain. It defines the token's name, symbol, and total supply through public variables and uses mappings to track user balances. 
## Getting Started

### Installing

## How/where to download your program

This program can be downloaded from this website (Remix IDE). It is Solidity Integrated Development Environment (IDE) that enables programmers or developers to create and deploy their own smart contracts on the Ethereum blockchain.

## Any modifications needed to be made to files/folders

There are no further modifications required to files or folder after downloading the program. All necessary components can be directly accessed within the Remix IDE. Download this program from the Remix IDE website, and you can start creating your code and deploying your own smart contracts here.

## Executing program

To execute this program, you need to understand and follow carefully the provided instructions.
  • Open your code editor and open the file containing the MyToken contract.
 
  • Ensure that you have the correct environment for deploying your smart contract on the blockchain network.
  
  • Copy the code I have given below and Compile it, Make sure the compiler version should be supported.

  • Now in the "deploy and run transactions" section, Mint the Token and Burn them as well.
  
  • Within your contract, you will find the following steps:
     
      Step A: Set the name and abbreviation of your token by updating the tokenName and tokenAbbrv variables.
      
      Step B: Establish the intial supply of your token by updating the totalSupply variable.
      
      Step C: Add addresses and their balances using the mint function.
      
      Step D: Choose addresses and initiate the token reduction process using the burn function.
  
  • Follow the comments inside the code to understand each part of the contract.


```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenName = "Ubuntu";
    string public tokenAbbrv = "UB";
    uint public totalSupply = 0; 

    // mapping variable here
    mapping ( address => uint) public balances;

    // mint function
    function mint(address _add,uint _val) public {
        totalSupply += _val;
        balances[_add] += _val;
    }

    // burn function
    function burn(address _add,uint _val) public {
        if(balances[_add] >= _val){
        totalSupply -= _val;
        balances[_add] -= _val;
        }
    }

}

```

## Help

Here are some tips fo encountering common problems.

When encountering issues with accessing your token, ensure that your permissions are correct.

If there are errors in minting and burning tokens, check your functions for possible misuse or small details.

Ensure that your variables and data types are correct to avoid compilation and runtime errors in your smart contract.

Be cautious in evaluating your conditions and assertions to avoid potential security and safety issues.

When facing issues with the execution and operation of your smart contract, simply debug using tools such as Ganache to analyze or check your created code and identify potential problems


## Authors

Contributors names and contact info

  Aayush Tewari  
  taayush1912@gmail.com


## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
