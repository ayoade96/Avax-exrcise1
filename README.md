# Meta Smart Contract

This is a Solidity smart contract called `Meta` that demonstrates the use of `require()`, `assert()`, and `revert()` statements. The contract allows the owner to set a variable `a` and provides three functions to showcase the use of these statements.

## License

This code is released under the MIT License. See [LICENSE](LICENSE) for more information.

## Smart Contract Details

- Solidity Version: 0.8.0
- SPDX-License-Identifier: MIT

## Description

The `Meta` smart contract has the following functionality:

- `constructor`: Initializes the contract with the address of the deployer as the owner.
- `onlyOwner` Modifier: This modifier ensures that only the owner of the contract can execute specific functions.

## Functions

### 1. `setVars(uint _a)`

- Modifier: `onlyOwner`
- Description: Allows the owner to set the value of variable `a`.

### 2. `testRequire(uint _c)`

- Description: A function to demonstrate the use of the `require()` statement. It will revert the transaction if the condition `_c == 0` is not met.

### 3. `testAssert(uint b)`

- Description: A function to demonstrate the use of the `assert()` statement. It will revert the transaction if the condition `b > 5` is not met.

### 4. `testRevert(uint b)`

- Description: A function to demonstrate the use of the `revert()` statement with a custom error message. It will revert the transaction if the condition `b < 5` is not met.

## Usage

1. Deploy this smart contract to the Ethereum blockchain using a development environment like Remix or Truffle.

2. Call the `setVars(uint _a)` function to set the value of variable `a`. Only the contract owner can do this.

3. Call the `testRequire(uint _c)` function to test the `require()` statement.

4. Call the `testAssert(uint b)` function to test the `assert()` statement.

5. Call the `testRevert(uint b)` function to test the `revert()` statement.

## Example

Here is an example of how to interact with the contract using the Remix IDE:

1. Deploy the contract.

2. Call the `setVars(uint _a)` function to set the value of `a`.

3. Call the `testRequire(uint _c)` function with different values of `_c` to see how the `require()` statement works.

4. Call the `testAssert(uint b)` function with different values of `b` to see how the `assert()` statement works.

5. Call the `testRevert(uint b)` function with different values of `b` to see how the `revert()` statement works.

## License

This code is released under the MIT License. See [LICENSE](LICENSE) for more information.
