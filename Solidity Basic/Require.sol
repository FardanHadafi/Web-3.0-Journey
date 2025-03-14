//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Require {
    function isZero (uint a) public pure returns (bool) { // Require example 
        require (a == 0 , 'That is not zero');
        return true;
    }

    function isZero2 (uint b) public pure returns (bool) { // If Else statement is similiar to Require 
    if(b == 0 ){
            return true;
        } revert ('That is not zero');
    }
}