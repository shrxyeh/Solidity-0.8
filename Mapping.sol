// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Mapping
// How to declare a mapping (simple and nested)
// Set, get, deletel I
contract Mapping {
    mapping(address => uint256) public balances;
    mapping(address => mapping(address => bool)) public isFriend; //Nested mapping.Checks if the address is the friend with another address

    function example() external {
        balances[msg.sender] = 123; //Setter
        uint256 bal = balances[msg.sender];
        uint256 bal2 = balances[address(1)]; //Will return 0//Not set the balance of address(1) but we can access the value of balances stored in address(1)

        balances[msg.sender] = 456; //Updated value
        // balances[msg.sender]+=456;//Increment--->123 + 456=729

        //To clear a value stored in mapping use "delete"

        delete balances[msg.sender]; //will get set to default value of uint which is 0

        //msg.sender is a friend of the contract
        isFriend[msg.sender][address(this)] = true;
    }
}
