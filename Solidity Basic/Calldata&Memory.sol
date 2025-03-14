//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalldataAndMemory {
    // Memory life time is limited to an external function call
    // Calldata is special data location that contains function arguments

    uint[5] public arr;

    function callData (uint[5] calldata _arr) public { // Calldata can only be used in function argument
                                                       // The arguments name become immutable 
        arr = _arr;
    }

    function mMemory () public view returns (uint[5] memory) { // Memory can be used anywhere inside a function , mutable 
        return arr;
    }
}