// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Ethereum{

    uint Eth;

    function setBalanceInEther(uint _Eth) public {
       Eth = _Eth;
    }

    function getBalanceInEther() public view returns (uint){
        return Eth;
    }

    function getBalanceInwei() public view returns (uint){
        return Eth * 1e18 ; 
    }

    function getBalanceInGwei() public view returns (uint){
        return Eth * 1e9;
    }
}
