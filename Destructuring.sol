// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Return multiple outputs
// Named outputs
// Destructuring Assignment
contract output {
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    function returnWithName() public pure returns (uint256 x, bool b) {
        return (1, true);
    }

    //This function will require the minimum gass of all three
    function assigned() public pure returns (uint256 x, bool b) {
        x = 1;
        b = true;
    }

    //Destructuring function:Basically used when we import some in-built function from libraries
    function destructuringAssignment() public pure {
        (uint256 x, ) = returnMany(); //when we need only the first output
        (, bool b) = returnMany(); //when we need only the second output
    }
}
