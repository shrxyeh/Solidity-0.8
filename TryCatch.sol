// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IExternalContract {
    function someFunction(uint256 x) external returns (uint256);
}

contract TryCatchExample {
    event Success(uint256 result);
    event Failure(string reason);

    function callExternalFunction(address externalContract, uint256 input) public {
        try IExternalContract(externalContract).someFunction(input) returns (uint256 result) {
            // If the call succeeds
            emit Success(result);
        } catch Error(string memory reason) {
            // If the external call fails with a revert reason
            emit Failure(reason);
        } catch (bytes memory lowLevelData) {
            // If the external call fails without a revert reason
            emit Failure("Failed without a revert reason");
        }
    }
}
