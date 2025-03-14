//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageAndMemory {
    // Storage is the location where the state variables are stored , where the lifetime is limited to the lifetime of a contract

    uint[3] public arr = [1,2,3];

    function fMemory () public view {
        uint[3] memory arr1 = arr;
        arr1[0] = 0;
    }

    function fStorage () public {
        uint[3] storage arr2 = arr;
        arr2[0] = 0;
    }
}