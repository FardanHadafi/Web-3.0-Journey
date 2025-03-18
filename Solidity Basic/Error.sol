// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errors {
    // Require , Revert , Assert
    // Gas refund , state update ares referted
    // Custom error = Save gas fee

    function checkRequire(uint x) public pure {
        require(x > 10, "Error");
        // code
    }

    function testRevert(uint x) public pure { // Does the same like require , but revert's best use case are in nested and alot of if statement
        if (x > 10) {
            revert("Error");
        }
    }

    uint public num = 123;

    function checkAssert() public view { // Assert is used when state variable is always to be true
        assert(num == 123);
    }

    error CustomError(address caller, uint x); // How to create a custom error

    function testCustomError(uint _x) public view { // Revert is needed to use custom error
        if (_x > 10 ) {
            revert CustomError(msg.sender, _x);
        }
    }
}