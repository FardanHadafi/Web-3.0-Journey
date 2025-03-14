//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MsgSender {
    // msg.sender will return the address whom called the function

    function getAddress () public view returns (address) {
        return msg.sender;
    }

    function blockTimestamp () public view returns (uint) {
        return block.timestamp;
    }
}