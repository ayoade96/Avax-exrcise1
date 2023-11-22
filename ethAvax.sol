// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Simple Voting System with Function and Error Handlers in Solidity Smart Contract
 * @author Ayoade Abdulrahman
 * @notice This demonstrates understanding and the use of `require()`, `assert()`, and `revert()` to handle errors in a Solidity smart contract
 * @dev This is a smart contract that implements the require(), assert() and revert() statements for error handling
 */

contract VotingSystem {
    error VoterDoesNotExist();

    struct Voter {
        string fullName;
        uint256 age;
        string politicalAffiliation;
    }

    mapping(address => Voter) public voters;

    function registerVoter(
        string memory _fullName,
        uint256 _age,
        string memory _politicalAffiliation
    ) public {
        require(bytes(_fullName).length > 4, "Full name should be longer than 4 letters");

        require(_age >= 18, "Voter must be 18 years or older");

        require(
            bytes(_politicalAffiliation).length > 4,
            "Political affiliation should be longer than 4 letters"
        );

        voters[msg.sender] = Voter(_fullName, _age, _politicalAffiliation);
    }



    function verifyVoterAge(uint256 _age) public view {
        assert(voters[msg.sender].age == _age);
    }

    function unregisterVoter() public {
        if (bytes(voters[msg.sender].fullName).length == 0)
            revert VoterDoesNotExist();

        delete voters[msg.sender];
    }

    function viewVoterProfile()
        public
        view
        returns (string memory, uint256, string memory)
    {
        if (bytes(voters[msg.sender].fullName).length == 0)
            revert VoterDoesNotExist();
        return (
            voters[msg.sender].fullName,
            voters[msg.sender].age,
            voters[msg.sender].politicalAffiliation
        );
    }
}
