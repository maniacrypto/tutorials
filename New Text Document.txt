// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 public counting;

    // Function to get the current count
    function get() public view returns (uint256) {
        return counting;
    }

    // Function to increment count by 1
    function inc() public {
        counting += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        counting -= 1;
    }
}