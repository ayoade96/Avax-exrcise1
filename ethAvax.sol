//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//write a smart contract that implements the require(), assert() and revert() statements.
contract Damba {
    address owner;
    uint z;
  

    error InputMustBeGreaterThanSix();

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;

    }

    function setVars(uint _z) external onlyOwner{
        z = _z;
    }
    function testRequire(uint _y) external pure{
        require(_y == 0);
    }
    function testAssert(uint x) external pure{
        assert(x > 6);
    }
    function testRevert(uint x) external pure{
        if (x < 6) revert InputMustBeGreaterThanSix();
    }
}