// Solidity program to demonstrate Reference Types
// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;  
   
// Creating a contract
contract Types {
 
    // Defining an array   
    uint[5] public array
      = [uint(1), 2, 3, 4, 5] ;
     
    // Defining a Structure
    struct student {
        string name;
        string subject;
        uint8 marks;
    }
 
    // Creating a structure object
    student public std1;
 
    // Defining a function to return
    // values of the elements of the structure
    function structure() public returns(
      string memory, string memory, uint){
        std1.name = "Vishnu";
        std1.subject = "Maths";
        std1.marks = 100;
        return (
          std1.name, std1.subject, std1.marks);
    }
     
    // Creating a mapping
    mapping (address => student) result;
    address[] student_result;
}