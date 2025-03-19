// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fallback {
    // Fallback function is used when :
    // 1. Function doesnt exist 
    // 2. Directly send ETH

    event Log (string func, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log ("FallBack", msg.sender, msg.value, msg.data);
     }
     
    receive() external payable { // Recievie function will executed when msg.data is empty
        emit Log ("Receive", msg.sender, msg.value, "");
     }
}