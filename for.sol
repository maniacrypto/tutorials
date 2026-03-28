// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.26 and less than 0.9.0
pragma solidity ^0.8.26;

contract HelloWorld {
    function looping(int256 x) public pure returns(int256){

        for(uint256 i=0;i<=10;i++){

           x++;
        }
        return x;
    }
}