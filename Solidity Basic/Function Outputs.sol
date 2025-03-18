// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionOutputs {
    // Return multiple outputs
    // Return named outputs
    // Destructuring outputs

    function multipleOutputs() public pure returns (uint, bool) {
        return (1, false);
    }

    function namedOutputs() public pure returns (uint a, bool b) {
        return (2, true);
    }

    function assigned() public pure returns (uint b, bool c) {
       return (3, true);
    }

    function destructuringOutputs() public pure {
        (uint b , bool c) = assigned();
    }
}