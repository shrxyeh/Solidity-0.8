// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constuctor{
    address public owner;
    uint public x;

    //It is called only once when we call the contract
    constructor(uint _x)
    {
        owner=msg.sender;
        x=_x;
    }
}
