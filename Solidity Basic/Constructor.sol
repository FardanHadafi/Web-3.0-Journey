//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constructor { // A constructor is an optional function that is executed upon contract creation
    uint a;

    constructor() {
        a = 1;
    }

    function getA () public view returns (uint) {
        return a;
    }
}

contract Constructor2 { // Constructor with argument
    uint public b;

    constructor(uint _b) {
        b = _b;
    }
}

// Important point about Constructor :
// 1. Executed only once 
// 2. Only 1 constructor per contract and its optional
// 3. A default constructor is created by the compiler if there is no explicitly defined constructor 