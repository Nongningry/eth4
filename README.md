# DegenToken Contract

This Solidity contract represents a simple ERC20 token called DegenToken with additional functionality for buying items using the token.

## Features

- The contract is an ERC20 token named "Degen" with symbol "DGN".
- It includes the ability to mint new tokens, burn existing tokens, and transfer tokens between addresses.
- The contract owner can mint new tokens as needed.
- Users can burn their tokens as needed.
- Users can buy items using their tokens.

## Item Marketplace

The contract includes a basic item marketplace where users can purchase items using their Degen tokens. The available items are:

1. Phone
2. Powerbank
3. Earphones

Each item has a price and quantity associated with it, which are initialized in the contract constructor.

## Functions

### mint

- **Description:** Mint new tokens and add them to the total supply.
- **Access:** Only the contract owner can call this function.
- **Parameters:** `amount` - the amount of tokens to mint.
- **Usage:** `mint(uint256 amount)`

### burn

- **Description:** Burn existing tokens and reduce the total supply.
- **Parameters:** `amount` - the amount of tokens to burn.
- **Usage:** `burn(uint256 amount)`

### transfer

- **Description:** Transfer tokens from the sender's address to the specified address.
- **Parameters:** `to` - the address to transfer tokens to, `amount` - the amount of tokens to transfer.
- **Usage:** `transfer(address to, uint256 amount)`

### buyItem

- **Description:** Allows users to buy items from the marketplace using their Degen tokens.
- **Parameters:** `itemName` - the name of the item to buy.
- **Usage:** `buyItem(string memory itemName)`

## Installation

To deploy and interact with the contract, you will need:

- A development environment with Solidity compiler (>=0.8.18) installed.
- The OpenZeppelin contracts library (version 4.9) for ERC20 and Ownable functionality.

## License

This contract is released under the MIT License.

SPDX-License-Identifier: MIT
