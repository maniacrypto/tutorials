// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MyToken
 * @dev ERC-20 token with minting capabilities and supply cap
 */
contract MyToken is ERC20, Ownable {
    // Maximum number of tokens that can ever exist
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10**18; // 1 billion tokens
   

    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply,
        address initialOwner
    ) ERC20(name, symbol) Ownable(initialOwner) {
        require(initialSupply <= MAX_SUPPLY, "Initial supply exceeds max supply");
        // Mint initial supply to the contract deployer
        _mint(initialOwner, initialSupply);
    }
    
   
    
    /**
     * @dev Burn tokens from caller's balance
     * @param amount Amount of tokens to burn
     */
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

     string memory name="Zagma";
        string memory symbol="ZGA";
        uint256 initialSupply=100_000_000 * 10**18;
        address initialOwner=0xd042512d49d13d277F1470c9D92aAb08a889658c;
        address deployerAddress=0xd042512d49d13d277F1470c9D92aAb08a889658c;

         MyToken token = new MyToken(
            name,
            symbol,
            initialSupply,
            deployerAddress
        );







      




}