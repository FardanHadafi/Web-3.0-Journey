//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingWithStruct {
    struct Student {
        string name;
        uint age;
        bool pass;
    }

    mapping (uint => Student) public student;

    function setData (uint index, string memory _name, uint _age, bool _pass) public {
        student[index] = Student(_name, _age, _pass);
    }

    function getData (uint index) public view returns (Student memory) {
        return student[index];
    }
}