// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Immutable {
    // State variables can be declared as constant or immutable.
    // In both cases, the variables cannot be modified after the contract has been constructed. 
    // For constant variables, the value has to be fixed at compile-time, while for immutable, it can still be assigned at construction time.
    
    address immutable owner = msg.sender;
    uint public x;

    function getOwner() external {
        require(msg.sender == owner, 'not owner');
        x++;
    }
}