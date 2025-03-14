//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingWithArray {
    mapping (address => uint[]) public marks;

    function setMarks (address _address, uint _marks) public {
        marks[_address].push(_marks);
    }

    function getMarks (address _address) public view returns (uint[] memory) {
        return marks[_address];
    }
}