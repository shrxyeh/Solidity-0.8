// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Function modifier - reuse code before and / or after function
// Basic, ineuts, sandwich

contract FuncModifier {
    bool public paused;
    uint256 public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused {
        // require(!paused,"paused");
        count++;
    }

    function dec() external whenNotPaused {
        // require(!paused,"paused");
        count--;
    }

    modifier cap(uint256 x) {
        require(x < 100, "x >100");
        _;
    }

    function incBy(uint256 _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    modifier sandwich() {
        // code here
        count += 10;
        _;
        //more code here
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}
