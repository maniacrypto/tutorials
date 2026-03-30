// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ViewAndPure {
    uint256 public x = 1;

    function noStateChange(uint256 no) public view returns(uint256){
        return x+no;

    }
    function noPureState(uint256 no) public pure returns(uint256){
        return no;

    }
}