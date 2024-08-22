// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    event ItemRedeemed(address indexed player, string item);

    // Mapping to keep track of redeemed items for each player
    mapping(address => string[]) private redeemedItems;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferNFTTokens(address _receiver, uint amount) external {
        require(balanceOf(msg.sender) >= amount, "Balance is Insufficient");
        approve(msg.sender, amount);
        transferFrom(msg.sender, _receiver, amount);
    }

    function checkBalance() external view returns (uint) {
        return balanceOf(msg.sender);
    }

    function burnNFTTokens(uint amount) external {
        require(balanceOf(msg.sender) >= amount, "Balance is Insufficient");
        _burn(msg.sender, amount);
    }

    function gameStore() public pure returns (string memory) {
        return "1. onaldo Signed Jersey NFT value = 250 \n2. Messi Autograph value = 150 \n3. Selfie with Neymar value = 125";
    }

    function redeemNFTTokens(uint choice) external {
        require(choice >= 1 && choice <= 3, "Selection is invalid please select between 1 and 3");

        string memory item;
        uint cost;

        if (choice == 1) {
            item = "Ronaldo Signed Jersey";
            cost = 250;
        } else if (choice == 2) {
            item = "Messi Autograph";
            cost = 150;
        } else if (choice == 3) {
            item = "Selfie with Neymar";
            cost = 125;
        }

        require(balanceOf(msg.sender) >= cost, "Balance is Insufficient");

        _burn(msg.sender, cost);
        redeemedItems[msg.sender].push(item);
        emit ItemRedeemed(msg.sender, item);
    }

    function getRedeemedNFT() external view returns (string[] memory) {
        return redeemedItems[msg.sender];
    }
}
