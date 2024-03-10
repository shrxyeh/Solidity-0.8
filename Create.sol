// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Create {
    uint public x;
    constructor(uint a) {
        x = a;
    }
}

contract Create2 {
    function getBytes32(uint salt) external pure returns (bytes32) {
        return bytes32(salt);
    }

    function getAddress(bytes32 salt, uint arg) external view returns (address) {
        address addr = address(uint160(uint(keccak256(abi.encodePacked(
            bytes1(0xff),
            address(this),
            salt,
            keccak256(abi.encodePacked(
                type(Create).creationCode,
                arg
            ))
        )))));

        return addr;
    }

    address public deployedAddr;

    function createSalted(bytes32 salt, uint arg) public {
        Create create = new Create{salt: salt}(arg);
        deployedAddr = address(create);
    }
}
