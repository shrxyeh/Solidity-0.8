// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//require,revert,assert
//gas refund,state updates sare reverted

contract Err
{
    error Unauthorized(address caller,uint i);
    uint256 public num=123;
    function testRequire(uint _i)public pure{
        //if require is failed all the code before the require will also be undone
        require(_i<=10,"i is greater than 10");
    }

    function testRevert(uint _i) public pure{
        if(_i>10)
        {
            revert("i is greater than 10");
        }
    }
    function testAssert(uint _i) public view
    {
        assert(_i==num);
    }

    //custome error is only applicable for reverts
    function CustomeError(uint _i)public view{
        if(_i>10)
        {
            revert Unauthorized(msg.sender,_i);
        }

    }

}
