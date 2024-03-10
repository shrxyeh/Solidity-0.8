// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Counter
{
    uint256 public count;

//since the function will modify the state variable "count" it is neither pure nor view
    function inc() external 
    {
        count++;
    }
    function dec() external 
    {
        count--;
    }

}
