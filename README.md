# SimpleToken Smart Contract

## Overview

This Solidity smart contract implements a basic ERC20 token with additional `mint` and `burn` functions. It allows for the creation and destruction of tokens while ensuring the integrity of the total supply and individual balances.

## Requirements

The contract adheres to the following requirements:

- Public variables store the details about the coin (Token Name, Token Abbreviation, Total Supply).
- Utilizes a mapping of addresses to balances (`address => uint`).
- Provides a `mint` function that increases the total supply and the balance of the sender's address.
- Implements a `burn` function that destroys tokens, ensuring that the sender's balance is sufficient.

## Usage

### Contract Details

- Token Name: [Your Token Name]
- Token Abbreviation: [Your Token Abbreviation]
- Total Supply: [Initial Total Supply]

### Functions

#### `mint(address to, uint256 value)`

This function creates new tokens and assigns them to the specified address.

- `to`: The address to mint tokens to.
- `value`: The amount of tokens to mint.

#### `burn(address from, uint256 value)`

This function destroys tokens held by the specified address.

- `from`: The address to burn tokens from.
- `value`: The amount of tokens to burn.
