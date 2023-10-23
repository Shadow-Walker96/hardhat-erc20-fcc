// 19:09:24 --> Creating an ERC20 Token with OpenZeppelin

/**
 * @notice This is the easy way of writing token using OpenZeppelin Library
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OurToken is ERC20 {
    // for example initial supply is 50 <- 50 WEI
    // initial supply 50e18
    // 50 * 10**18
    constructor(uint256 initialSupply) ERC20("OurToken", "OT"){
        _mint(msg.sender, initialSupply);
    }
}