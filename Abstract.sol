//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

/*

ABSTRACT CONTRACTS

Abstract Contract is one which contains at least one function without any implementation. 
Such a contract is used as a base contract. 
Generally an abstract contract contains both implemented as well as abstract functions. 
Derived contract will implement the abstract function and use the existing functions as and when required.

*/

// base contract

abstract contract X {
    function y() public {}
}

abstract contract Member {
    string name;
    uint256 age = 3;

    // this function makes it abstract since it has no body
    function setName() public virtual returns (string memory) {}

    // if i define one more function -
    function returnAge() public view returns (uint256) {
        return age;
    }
}

// derived contract
contract Teacher is Member {
    function setName() public pure override returns (string memory) {
        return "Francesca";
    }
}

/*
Exercise:
1. Create an abstract base contract called Calculator with a read only public function that returns integers 
2. Create a derived contract called Test which derives the Calculator contract and can calculate 1 + 2 and return the result 
*/

abstract contract Calculator {
    function getResult() public pure virtual returns (uint256) {}
}

contract Test is Calculator {
    function getResult() public pure override returns (uint256) {
        uint256 a = 1;
        uint256 b = 2;
        uint256 result = a + b;
        return result;
    }
}
