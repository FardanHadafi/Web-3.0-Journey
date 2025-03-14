//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Struct {
    // Struct is a complex data type, a complex data types is usually to composite of another existing data type.

    struct Student {
        string name;
        uint age;
        bool pass;
    }

    Student public s1;

    function setStudent(string memory _name, uint _age, bool _pass) public {
        // s1.name = _name;
        // s1.age = _age;
        // s1.pass = _pass;
        // OR
        s1 = Student(_name, _age, _pass);
    }

    function getStudent() public view returns (Student memory) { // Return whole struct
        return s1;
    }

    function getSpecific () public view returns (string memory) { // Return specific struct
        return s1.name;
    }
}