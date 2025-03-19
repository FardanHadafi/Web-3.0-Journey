// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event {
    event Log(string message, uint value);
    // Up to 3 index can be indexed
    event IndexedLog(address indexed sender, uint val);

    function example() external {
        emit Log("Hello World", block.timestamp);
        emit IndexedLog(msg.sender, 12345);
    }

    event SimpleEvent(address indexed _from, address indexed _to, string message);
    
    function simple(address _to, string calldata message) external {
        emit SimpleEvent(msg.sender, _to, message);
    }
}