// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping  {
	mapping (address => uint) public myMapping;

	function set(address _add,uint bal) public {
		myMapping[_add]=bal;

	}

		function get(address _add) public return (uint) {
		  
		  return myMapping[_add];

	}
	function del(address _add) public  {
		  
		  delete myMapping[_add];

	}
	
	





}