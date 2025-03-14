//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArray {
    uint[] public arr;

    function setArr (uint value) public {
        arr.push(value);
    }

    function removeArr () public {
        arr.pop();
    }

    function lengthArr () public view returns (uint) {
        return arr.length;
    }

    function getAllArr () public view returns (uint[] memory) {
        return arr;
    }
}