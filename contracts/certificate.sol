// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^4.0.0
pragma solidity ^0.8.0;

import "@openzeppelin/contractspenzeppelin/contracts/token/ERC721/ERC721.sol";cd

contract abilityChainCertificate is ERC721 {
    address public owner;

    constructor() ERC721("Ability Chain Certificate", "ACC") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function changeOwner(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Invalid new owner address");
        owner = newOwner;
    }

    function mint(address to, uint256 tokenId) external {
        _mint(to, tokenId);
    }
}