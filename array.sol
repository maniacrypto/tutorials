// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Array {
    // Several ways to initialize an array
    uint256[] public arr;


    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }
     function set(uint256 i) public {
        arr.push(i);

    }
        function del(uint256 i) public {
        delete arr[i];
    }
    function getArray() public returns(uint256[] memory){
        return arr;
    }


   

    }