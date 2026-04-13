// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
error NotOwner();
contract . {
    uint constant minimumUsd = 1 * 10 ** 15;
    address immutable public owner;
    address[] public funders;
    int104 public result=1;
mapping (address => uint256) public addressToAmountFunded;
    constructor(){
        owner=msg.sender;
    }


  
    function funding() external payable {
        require(msg.value >= minimumUsd, "You need to spend more ETH!");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
         
    }
    function withdraw() external payable onlyOwner{
        
        //payable(msg.sender).transfer(address(this).balance);
        //bool paid=payable(msg.sender).send(address(this).balance);
        //require(paid,"failed to send eth");
        (bool paid,)=payable(msg.sender).call{value: address(this).balance}("");
        require(paid,"failed to send eth");

            for (uint i = 0; i < funders.length; i++) {
                address funder = funders[i];
            addressToAmountFunded[funder] = 0;
            }
            funders = new address[](0);
    }


    modifier onlyOwner() {
        if(msg.sender != owner) revert NotOwner();
        //require(msg.sender == owner, "Only owner can withdraw");
        _;
    }
        fallback() external payable {
             require(msg.value >= minimumUsd, "You need to spend more ETH!");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }

    receive() external payable {
               require(msg.value >= minimumUsd, "You need to spend more ETH!");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }



    


}