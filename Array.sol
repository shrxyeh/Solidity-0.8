//SPDX-License-ldentifier:MIT
pragma solidity ^0.8.0;

// Array - dynamic or fixed size
// Initialization
// Insert (push), get, update, delete,pop,length
// Creating array in memory
// Returning array from function

contract Array {
    uint256[] public Arr; //dynamic
    uint256[3] public fixedArr; //fixed

    function example() external  {
        Arr.push(4); //[1,2,3,4,4]
        Arr[3] = 200; //[1,2,3,200,4]
        delete Arr[1]; //[1,0,3,4,4]//After deleting the length of the array remains the same
        Arr.pop(); //removes last element of array as well as the lenght of array is reduced

        //Create an array in memory
        uint256[] memory a = new uint256[](5); //In parenthesis we declare the size of the array.Here 5.Once size is declared it cannot be changed
        
    }

    function returnArrya()public view returns(uint256[] memory)
    {
        return Arr;

    }
}

