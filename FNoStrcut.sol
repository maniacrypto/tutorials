// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FNoStrcut {

    uint fnum;
    string name;
    struct Fnumber{
        uint fnum;
        string name;
    }
    Fnumber[] public farray;
    function addFnumber(uint _fnum, string memory _name) public{
        farray.push(Fnumber(_fnum, _name));
    }
    function getFnumber(uint _n) public view returns(uint){
        for(uint i=0; i<farray.length; i++){
             if(farray[i].fnum == _n)
            {
                return farray[i].fnum;
            }
        }

    }
   


}