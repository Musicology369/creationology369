// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OLOGYToken is ERC20, Ownable {
    uint256 public constant TOTAL_SUPPLY = 1_000_000_000 ether; // 1 billion
    uint256 public constant CREATOR_SHARE = 9630; // 96.30%

    constructor() ERC20("CREATIONology", "OLOGY") Ownable(msg.sender) {
        _mint(msg.sender, TOTAL_SUPPLY);
    }

    // Circular distribution hook - called by agents
    function distributeCreatorShare(address creator, uint256 amount) external {
        uint256 creatorAmount = (amount * CREATOR_SHARE) / 10000;
        _transfer(address(this), creator, creatorAmount);
    }
}
