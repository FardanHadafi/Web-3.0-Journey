//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loops {
    function whileLoop () public pure returns (uint) {
        uint a;
        uint b;

        while (b < 10) {
            a += b;
            b++;
        }
        return a;
    }

    function forLoop () public pure returns (uint) {
        uint c;
        uint d;

        for (d; d < 10; d++) {
            c += d;
        }
        return c;
    }

    function doWhileLoop () public pure returns (uint) {
        uint e;
        uint f;

        do {
            e += f;
            f++;
        } while (f < 10);
        return e;
    }
}