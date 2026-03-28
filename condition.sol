// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract IfElse {
    function foo(uint256 x) public pure returns (uint256) {
        if (x==100){

            return 1;
        }else if (x==200){

            return 2;
        }else{

            return 3;
        }
       
    }


}