//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAndPure {
    uint a;

    function setA () public {
        a++;
    }

    function getA () public view returns (uint) { // View is used to read the state variable's value 
        return a;
    }

    function pureB (uint b, uint c) public pure returns (uint) { // Pure declares that no state variable will be changed / read
        return b + c;
    }
}