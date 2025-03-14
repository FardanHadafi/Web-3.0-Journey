//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariable {
    function localVariable (uint a, uint b) public pure returns (uint) { 
        return a + b; // This is Local Variable 
    }
}