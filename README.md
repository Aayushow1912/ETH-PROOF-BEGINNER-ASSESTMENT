EthProof-Beginner Course
FinalProject - MyToken
Hello! This code is designed to create a token on the Ethereum blockchain. It enables actions such as token creation (minting) and token destruction (burning). The token is named "Ubuntu" with the symbol "UB". It keeps track of the total supply and the balances of each address.

Description
The Baingan (UB) token contract offers essential token functionalities on the Ethereum blockchain. It defines the token's name, symbol, and total supply through public variables and uses mappings to track user balances.

Getting Started
Installing
How/where to download your program
This program can be downloaded from this website (Remix IDE). It is Solidity Integrated Development Environment (IDE) that enables programmers or developers to create and deploy their own smart contracts on the Ethereum blockchain.

Any modifications needed to be made to files/folders
There are no further modifications required to files or folder after downloading the program. All necessary components can be directly accessed within the Remix IDE. Download this program from the Remix IDE website, and you can start creating your code and deploying your own smart contracts here.

Executing program
To execute this program, you need to understand and follow carefully the provided instructions. • Open your code editor and open the file containing the MyToken contract.

• Ensure that you have the correct environment for deploying your smart contract on the blockchain network.

• Copy the code I have given below and Compile it, Make sure the compiler version should be supported.

• Now in the "deploy and run transactions" section, Mint the Token and Burn them as well and Enjoy!.

• Within your contract, you will find the following steps:

  Step A: Set the name and abbreviation of your token by updating the tokenName and tokenAbbrv variables.
  
  Step B: Establish the intial supply of your token by updating the totalSupply variable.
  
  Step C: Add addresses and their balances using the mint function.
  
  Step D: Choose addresses and initiate the token reduction process using the burn function.
• Follow the comments inside the code to understand each part of the contract.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have  a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

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


Help
Here are some tips fo encountering common problems.

When encountering issues with accessing your token, ensure that your permissions are correct.

If there are errors in minting and burning tokens, check your functions for possible misuse or small details.

Ensure that your variables and data types are correct to avoid compilation and runtime errors in your smart contract.

Be cautious in evaluating your conditions and assertions to avoid potential security and safety issues.

When facing issues with the execution and operation of your smart contract, simply debug using tools such as Ganache to analyze or check your created code and identify potential problems

Authors
Contributors names and contact info

Aayush Tewari
taayush1912@gmail.com

License
This project is licensed under the [MIT] License - see the LICENSE.md file for details
