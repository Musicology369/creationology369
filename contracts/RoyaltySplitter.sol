// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RoyaltySplitter {
    uint256 public constant CREATOR_SHARE = 9630; // 96.30%
    uint256 public constant ECOSYSTEM_FEE = 370;  // 3.70%

    event Distributed(address indexed creator, uint256 creatorAmount, uint256 ecosystemAmount);

    function distribute(uint256 totalAmount, address creator) external {
        uint256 creatorAmount = (totalAmount * CREATOR_SHARE) / 10000;
        uint256 ecosystemAmount = (totalAmount * ECOSYSTEM_FEE) / 10000;

        emit Distributed(creator, creatorAmount, ecosystemAmount);
    }
}
