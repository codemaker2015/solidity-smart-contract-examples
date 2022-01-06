// Solidity program to demonstrate Reference Types
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;  
   
// Creating a contract
contract ModifierTest {
    address testAddress;
    constructor() {
        testAddress = msg.sender;
    }

    // Check if the function is called by the owner of the contract
    modifier onlyOwner() {
        if (msg.sender == testAddress) {
            _;
        }
    }
    
    // Can only be called by the owner - using onlyOwner modifier
    function test() public onlyOwner {
    }
}