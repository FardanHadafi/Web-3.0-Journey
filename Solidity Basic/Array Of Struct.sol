//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayOfStruct {
    struct Student {
        string name;
        uint age;
        bool pass;
    }

    Student[3] public s1; // This is fixed array struct
    // Student[] public s1 // This is Dynamic array struct

    function setStudent (uint index, string memory _name, uint _age, bool _pass) public { // If the array is dynamic , delete uint index
    // and use this syntax = s1.push(Student(_name,_age,_pass);
        s1[index] = Student(_name,_age,_pass);
    }

    function getStudent (uint index) public view returns (Student memory) {
        return s1[index];
    }
}