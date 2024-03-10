// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariables
{
    function GlobalVariable() public view returns(address,uint256,uint256)
    {
        address sender=msg.sender;
        uint256 timeStamp=block.timestamp;//block.timestamp stores the unix time from when this function is called
        uint256 blockNum=block.number;//block.number stores the current number of the block
        return (sender,timeStamp,blockNum);
    }
}
