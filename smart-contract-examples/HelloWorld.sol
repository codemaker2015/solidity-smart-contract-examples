// Solidity program to demonstrate Reference Types
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;  
   
// Creating a contract
contract HelloWorld {
 
    string public name;
 
    constructor(string memory yourName) public{
        name = yourName;
    }
 
    function changeName(string memory yourName) public{
        name = yourName;
    }
 
    function getName() public view returns(string memory){
        return name;
    }
}