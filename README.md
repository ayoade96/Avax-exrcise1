# Simple Voting System Smart Contract

![License](https://img.shields.io/badge/License-MIT-blue.svg)

## Description

This is a simple Voting System smart contract written in Solidity. It demonstrates the use of `require()`, `assert()`, and `revert()` statements for error handling.

## Author

 Ayoade Abdulrahman Adesile

## Features

- **Voter Registration:** Allows users to register as voters by providing their full name, age, and political affiliation.
- **Age Verification:** Provides a function to verify a voter's age.
- **Voter Unregistration:** Allows voters to unregister themselves.
- **View Voter Profile:** Retrieves and displays the profile details of a registered voter.

## Smart Contract Details

### Struct

```solidity
struct Voter {
    string fullName;
    uint256 age;
    string politicalAffiliation;
}
```
### Functions

- **Register Voter**

```
function registerVoter(
    string memory _fullName,
    uint256 _age,
    string memory _politicalAffiliation
) public
```
- **Verify Voter Age**

```
function verifyVoterAge(uint256 _age) public view
```
- **Unregister Voter**
```
function unregisterVoter() public
```
- **viewVoterProfile**
```
function viewVoterProfile() public view returns (string memory, uint256, string memory)
```

## Usage

- **Register a Voter**: Use the registerVoter function to register as a voter, providing your full name, age, and political affiliation.


- **Verify Voter Age**: function to verify the age of a registered voter.

- **Unregister Voter**: Use the unregisterVoter function to unregister as a voter.

- **View Voter Profile**: Use the viewVoterProfile function to view the profile details of a registered voter.

