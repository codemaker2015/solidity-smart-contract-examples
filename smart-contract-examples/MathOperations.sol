// Solidity program to demonstrate Reference Types
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;  
   
// Creating a contract
contract MathOperations {
    function addNumbers() public pure returns(uint){
        uint a = 1; // local variable
        uint b = 2;
        uint result = a + b;
        return result;
    }
}