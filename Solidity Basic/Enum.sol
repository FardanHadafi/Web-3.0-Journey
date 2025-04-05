// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enums {
    enum Choices {goStraight, turnLeft, turnRight, stop}

    Choices public choice;

    Choices constant defaultChoice = Choices.goStraight;

    function setChoice () public {
        choice = Choices.stop;
    }

    function getChoice() public view returns(Choices) {
        return choice;
    }

    function getDefaultChoiceValueType() public pure returns(uint) {
        return uint(defaultChoice);
    }

    function getMaxValue() public pure returns(Choices) {
        return type(Choices).max;
    }

    function getMinValue() public pure returns(Choices) {
        return type(Choices).min;
    }
}