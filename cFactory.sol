// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {FNoStrcut} from "./FNoStruct.sol";

contract cFactory {
    FNoStrcut public fnostruct;
    FNoStrcut[] public fnostructs;

    function create() public  {
       fnostructs.push(fnostruct = new FNoStrcut());
    }
    function get(uint256 index,uint256 _nu,string memory _st) public  {
         fnostructs[index].addFnumber(_nu,_st);
    }
    function getFnumber(uint256 index,uint256 _nu) public view returns (uint) {
        return fnostructs[index].getFnumber(_nu);
    }

    }