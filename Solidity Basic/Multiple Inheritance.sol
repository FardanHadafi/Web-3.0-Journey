// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    // Order of Multiple Inheritance is from most base-like to derived

    function foo() public pure virtual returns (string memory) {
        return "foo";
    }

    function bar() public pure virtual returns (string memory) {
        return "bar";
    }

    function x() public pure returns (string memory) {
        return "X";
    }
}

contract Y is X {
    // Order of Multiple Inheritance is from most base-like to derived

    function foo() public pure virtual override returns (string memory) {
        return "Y";
    }

    function bar() public pure virtual override returns (string memory) {
        return "Y";
    }

    function y() public pure returns (string memory) {
        return "Y";
    }
}

contract Z is X, Y {
    // Order of Multiple Inheritance is from most base-like to derived

    function foo() public pure override(X, Y) returns (string memory) {
        return "Z";
    }

    function bar() public pure override(Y, X) returns (string memory) {
        return "Z";
    }
}