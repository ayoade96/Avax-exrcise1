# Damba Smart Contract

This repository features a Solidity smart contract named `Damba` that exemplifies the utilization of `require()`, `assert()`, and `revert()` statements. The contract enables the owner to set a variable `z` and includes three functions to demonstrate the implementation of these statements.

## License

This code is provided under the MIT License. Refer to [LICENSE](LICENSE) for additional details.

## Smart Contract Details

- Solidity Version: 0.8.0
- SPDX-License-Identifier: MIT

## Description

The `Damba` smart contract encompasses the following functionality:

- `constructor`: Initializes the contract with the deployer's address as the owner.
- `onlyOwner` Modifier: Ensures that only the contract owner can execute specific functions.

## Functions

### 1. `setVars(uint _z)`

- Modifier: `onlyOwner`
- Description: Allows the owner to set the value of the variable `z`.

### 2. `testRequire(uint _y)`

- Description: Illustrates the use of the `require()` statement. The transaction will revert if the condition `_y == 0` is not met.

### 3. `testAssert(uint x)`

- Description: Demonstrates the use of the `assert()` statement. The transaction will revert if the condition `x > 6` is not met.

### 4. `testRevert(uint x)`

- Description: Exhibits the use of the `revert()` statement with a custom error message. The transaction will revert if the condition `x < 6` is not met.

## Usage

1. Deploy this smart contract to the Ethereum blockchain using a development environment like Remix or Truffle.

2. Invoke the `setVars(uint _z)` function to set the value of variable `z`. Only the contract owner can perform this action.

3. Invoke the `testRequire(uint _y)` function to test the `require()` statement.

4. Invoke the `testAssert(uint x)` function to test the `assert()` statement.

5. Invoke the `testRevert(uint x)` function to test the `revert()` statement.

## License

This code is released under the MIT License. Refer to [LICENSE](LICENSE) for additional information.