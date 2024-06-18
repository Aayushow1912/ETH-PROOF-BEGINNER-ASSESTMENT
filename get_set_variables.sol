// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Challenge {

    uint private num;
    string private str;
    bool private val;
    address private add_val;

    
    function setNumber(uint _num) public returns (uint){
        num = _num;
        return num;
    }

    // return number
    function getNumber() public view returns (uint) {
        return num;
    }
    
    function setString( string memory _str) public returns (string memory){
        str = _str;
        return str;
    }

    // return string
    function getString() public view returns (string memory) {
        return str;
    }

    function setValue(bool _val) public returns (bool){
        val = _val;
        return val;
    }

    // return boolean
    function getValue() public view returns (bool) {
        return val;
    }

    function setAddress(address _add_val) public returns (address){
       add_val = _add_val;
       return add_val;
    }

    // return address
    function getAddress() public view returns (address) {
        return add_val;
    }
}
