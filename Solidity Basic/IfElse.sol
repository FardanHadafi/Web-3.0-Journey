//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElse {
    function ifElse (uint a, uint b) public pure returns (uint) {
        if (a < b) {
            return 1;
        } else if (a > b) {
            return 2;
        } else return 0;
    }
}