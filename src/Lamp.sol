// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Lamp is ERC20 {
    
    // Constructor to pass name and symbol
    constructor (uint256 initialSupply) ERC20("Lamp Token", "LMP") {
        _mint(msg.sender, initialSupply);
    }
}