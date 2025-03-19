// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    string public name;

    constructor(string memory _a) {
        name = _a;
    }
}

contract B {
    string public text;

    constructor(string memory _b) {
        text = _b;
    }
}

contract C is A("A"), B("B") { // First method to call parent constructor if parameter is static and known

}

contract D is A, B {
    constructor(string memory _a, string memory _b) A(_a) B(_b) { // Second method to call parent constructor if parameter is dynamic and unknown

    }
}

// Important Note ! : The only matter is inheritance order .. D is A,B or D is B,A ... the rest is not important !