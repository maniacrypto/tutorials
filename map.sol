// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract napping {

  
    string name;

    mapping  (address => string) public nap;

    function add(string memory _name) public {
        nap[msg.sender] = _name;
    }

    function get() public view returns (string memory) {
        return nap[msg.sender];
    }
    function update(string memory _name) public {
        nap[msg.sender] = _name;
    
    }
    function del() public {
        delete nap[msg.sender];
    
    }



}m