// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PERC20Token is ERC20("PERC20Token", "PERC20"), Ownable {
    constructor() {
        // Mint 1 token to the contract deployer
        _mint(msg.sender, 1 ether); // You can adjust the number of tokens here (1 ether = 1 token)
    }

    // Mint additional tokens if needed (only the owner can call this function)
    function mint(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }

    // Transfer 1 token to the specified address
    function transferToken(address to) public onlyOwner {
        _transfer(owner(), to, 1 ether); // 1 ether = 1 token
    }
}
