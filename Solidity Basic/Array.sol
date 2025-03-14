//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array {
    uint[5] arr;

    function insertArr (uint index, uint value) public {
        arr[index] = value;
    }

    function getArr (uint index) public view returns (uint) {
        return arr[index];
    }

    function getAllArr () public view returns (uint[5] memory) {
        return arr;
    }
}