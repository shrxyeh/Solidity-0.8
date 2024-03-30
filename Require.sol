// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CustomErrorExample {
    // Define a custom error with details about the error condition
    error InsufficientBalance(uint256 available, uint256 required);

    // Storage variable to hold balances
    mapping(address => uint256) public balanceOf;

    // Function to deposit ether into the contract
    function deposit() public payable {
        balanceOf[msg.sender] += msg.value;
    }

    // Function to withdraw ether from the contract
    function withdraw(uint256 _amount) public {
        // Check if the balance is sufficient using the custom error
        if (balanceOf[msg.sender] < _amount) {
            revert InsufficientBalance({
                available: balanceOf[msg.sender],
                required: _amount
            });
        }

        balanceOf[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}
