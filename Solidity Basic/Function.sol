//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Function { // Basic function without parameter
    uint a;

    function setter () public {
        a++;
    }

    function getter () public view returns (uint) {
        return a;
    }
}

contract Function2 { // Basic function with parameter
    uint public a;

    function setter (uint _a) public {
        a = _a;
    }
}