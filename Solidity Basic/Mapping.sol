//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    mapping(uint => string) data;

    function setData (uint index, string memory _name) public {
        data[index] = _name;
    }

    function getData (uint index) public view returns (string memory) {
        return data[index];
    }
}