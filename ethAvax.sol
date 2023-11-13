//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//write a smart contract that implements the require(), assert() and revert() statements.
contract Meta {
    address owner;
    uint a;
  

    error InputMustBeGreaterThanFive();

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;

    }

    function setVars(uint _a) external onlyOwner{
        a = _a;
    }
    function testRequire(uint _c) external pure{
        require(_c == 0);
    }
    function testAssert(uint b) external pure{
        assert(b > 5);
    }
    function testRevert(uint b) external pure{
        if (b < 5) revert InputMustBeGreaterThanFive();
    }
}