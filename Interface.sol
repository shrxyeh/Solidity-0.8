// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Interface Definition
interface IStorage {
    function store(uint256 _value) external;
    function retrieve() external view returns (uint256);
}

// Storage Contract Implementing the Interface
contract Storage is IStorage {
    uint256 private value;

    function store(uint256 _value) external override {
        value = _value;
    }

    function retrieve() external view override returns (uint256) {
        return value;
    }
}

// Contract Using the Interface
contract StorageUser {
    IStorage private storageContract;

    constructor(address _storageAddress) {
        storageContract = IStorage(_storageAddress);
    }

    function storeValue(uint256 _value) public {
        storageContract.store(_value);
    }

    function getValue() public view returns (uint256) {
        return storageContract.retrieve();
    }
}

