// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
ABSTRACT CONTRACTS
Abstract Contract is one which contains at least one function without any implementation.
Such a contract is used as a base contract.
Generally an abstract contract contains both implemented as well as abstract functions.
Derived contract will implement the abstract function and use the existing functions as and when required.
*/
abstract contract X {
    // since the function has no implementation we should mark it as virtual
    function y() public view virtual returns (string memory);
}

// derived contract

contract Z is X {
    function y() public pure override returns (string memory) {
        return "hello";
    }
}
