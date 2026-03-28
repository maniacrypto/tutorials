// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
    // State variable to store a number
    uint256 public state;

    //transaction to write to a state variable.
    function set(uint256 _num) public {
        state = _num;
    }

    //readvariable without sending a transaction.
    function get() public view returns (uint256) {
        return state;
    }
}