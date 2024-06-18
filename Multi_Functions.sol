// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MultiFun{
    function add_no (uint x, uint y) external pure returns (uint) {
        return x+y;
    }
    function sub_no (uint x, uint y) external pure returns (uint) {
        return x-y;
    }
    function mul_no (uint x, uint y) external pure returns (uint) {
        return x*y;
    }
    function divide_no (uint x, uint y) external pure returns (uint) {
        return x/y;
    }
}
