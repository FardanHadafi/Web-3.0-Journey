// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    // Is keyword to do inheritance 
    // Vitual keyword is used to modify specific thing 
    // Override keyword is needed to modify
    function a() public pure virtual returns (string memory) {
        return "a";
    }

    function b() public pure virtual returns (string memory) {
        return "a";
    }

    function c() public pure returns (string memory) {
        return "a";
    }
}

contract B is A {
    function a() public pure override returns (string memory) {
        return "b";
    }

    function b() public pure virtual override returns (string memory) {
        return "b";
    }
}

contract C is B {
    function b() public pure override returns (string memory) {
        return "c";
    }
}