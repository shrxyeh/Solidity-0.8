//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

// error Unauthorized(address caller);//Can decalre it outside the contract and later it import into other contracts
contract CustomError {
    error Unauthorized(address caller);//log the address of owner if error
    address payable owner = payable(msg.sender);

    function withdraw()public view {
        if (msg.sender != owner) {
            revert Unauthorized(msg.sender);//plus saves a lot of gas
        }
    }
}
