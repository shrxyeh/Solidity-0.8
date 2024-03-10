pragma solidity ^0.8.0;

contract SafeMath
{
    // This function will cause an error since it is written in version 0.8.0
    function testUnderflow()public view returns(uint256)
    {
        uint256 x=0;
        x--;
        return x;
    }
    //function will not return an error and cause an overflow
    function testUncheckedUnderflow()public view returns(uint256)
    {
        uint256 x=0;
        unchecked{x--;}//This line makes it neglect the 0.8.0 version hence it will acts like the 0.6.0 version 
        return x;

    }
}
