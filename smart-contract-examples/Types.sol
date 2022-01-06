// Solidity program to demonstrate value types
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;  
   
// Creating a contract
contract Types {   
 
    // Initializing Bool variable
    bool public boolean = false;
    
    // Initializing Integer variable
    int32 public int_var = -12345;
 
    //  Initializing String variable
    string public str = "Codemaker";
 
    // Initializing Byte variable
    bytes1 public b = "v";
     
    // Defining an enumerator
    enum week { sunday, monday, tuesday, wednesday, thursday, friday, saturday  } 
 
    // Defining a function to return
    // values stored in an enumerator
    function Enum() public pure returns(
      week) {   
        return week.monday;   
    }   
}