//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enum {
    // Enum are user-defined data types that restrict the variable to have only one of the pre-defined value.
    enum Button {ON, OFF}
    
    Button public x;

    function setEnumValue (Button _x) public {
        x = _x;
    }

    function getEnumValue () public view returns (Button) {
        return x;
    }

    function checkEnumValue () public view returns (string memory) {
        if (x == Button.ON) {
            return 'Button is ON';
        } else return 'Button is OFF';
    }
}