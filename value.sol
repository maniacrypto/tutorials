// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
//immutables values are only can be set in constructor and cant be change after
contract Immutable {
    address public immutable Addr;
    uint256 public immutable Uint;

    constructor(uint256 _myUint) {
        
        Addr = msg.sender;
        Uint = _myUint;
    }
}