// Solidity program to demonstrate Reference Types
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;  
   
// Creating a contract
contract ErrorHandling {
    address public seller;
    modifier onlySeller() {
        require(
            msg.sender == seller,
            "Only seller can call this."
        );
        _;
    }

    function sell(uint amount) public payable onlySeller { 
        if (amount > msg.value / 2 ether)
            revert("Not enough Ether provided.");
        // Perform the sell operation.
    }
}