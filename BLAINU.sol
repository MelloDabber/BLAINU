// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract blainu is ERC20 {
    // Address that will deploy the contract is the initial owner
    address public owner;

    // Constructor to initialize the token with a name and symbol
    constructor() ERC20("blainu", "blainu") {
        owner = msg.sender;
        // Mint an initial supply and assign it to the owner
        _mint(owner, 1000000 * 10 ** 18); // 1,000,000 tokens with 18 decimals
    }

    // Function to mint new tokens
    function mint(address to, uint256 amount) external {
        require(msg.sender == owner, "Only the owner can mint");
        _mint(to, amount);
    }
}