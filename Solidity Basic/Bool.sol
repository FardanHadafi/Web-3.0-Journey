//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bool {
    bool public isTrue = true; // By default bool data type is false 

    function isEven (uint a) public pure returns (bool) { // Bool use case
        if (a % 2 == 0) {
            return true;
        }
        return false;
    }
}