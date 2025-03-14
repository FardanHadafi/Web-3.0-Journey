//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier { // True modifier condition
    modifier isTrue {
        require (true, 'This is not true');
        _;
    }

    function example () public pure isTrue returns (uint) {
        return 1;
    }

    modifier isFalse { // False modifier condition
        require (false, 'This is false');
        _;
    }

    function example2 () public pure isFalse returns (uint) {
        return 2;
    }

    modifier isEven (uint a) { // True modifier condition with argument
        require (a % 2 == 0 , 'Not an even numbers');
        _;
    }

    function example3 (uint a) public pure isEven(a) returns (bool) {
        return true;
    }
}