// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    // Mapping to store the prices of items
    mapping(string => uint256) public itemPrices;
 
    // Mapping to store the quantity of items available
    mapping(string => uint256) public itemQuantities;

    constructor() ERC20("Degen", "DGN") {
        // Initialize item prices and quantities
        itemPrices["Phone"] = 300;
        itemQuantities["Phone"] = 10;

        itemPrices["Powerbank"] = 2;
        itemQuantities["Powerbank"] = 20;

        itemPrices["Earphones"] = 10;
        itemQuantities["Earphones"] = 5;
    }

    function mint( uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;
    }


    function buyItem(string memory itemName) public {
        require(itemQuantities[itemName] > 0, "Item not available");
        require(balanceOf(msg.sender) >= itemPrices[itemName], "Insufficient balance");

        _burn(msg.sender, itemPrices[itemName]);
        itemQuantities[itemName]--;
    }
}
