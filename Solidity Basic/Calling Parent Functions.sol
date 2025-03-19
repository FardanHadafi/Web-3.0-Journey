// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    // There are 2 ways to call a parent function
    // 1. Directly
    // 2. Using super keyword 

    event Log(string messasge);

    function bar() public virtual {
        emit Log("A.bar");
    }

    function foo() public virtual {
        emit Log("A.foo");
    }
}

contract B is A {

    function bar() public virtual override {
        emit Log("B.bar");
        A.bar();
    }

    function foo() public virtual override {
        emit Log("B.foo");
        super.foo();
    }
}

contract C is A, B {
    function foo() public override(A,B) {
        A.foo();
    }

    function bar() public override (A, B) {
        super.bar();
    }
}