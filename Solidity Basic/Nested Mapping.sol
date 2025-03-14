//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NestedMapping {
    mapping (uint => mapping (uint => bool)) public data;

    function setData (uint row, uint column, bool value) public {
        data[row][column] = value;
    }

    function getData (uint row, uint column) public view returns (bool) {
        return data[row][column];
    }
}