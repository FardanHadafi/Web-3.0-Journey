// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendTransferCall {
    // There are 3 ways to send ETH
    // Transfer - 2300 gas - return revert
    // Send - 2300 gas - returns bool
    // Call - All gass - return bool and data

    constructor() payable {}
    receive() external payable { }

    function sendViaTransfer(address payable _reciever) external payable {
        _reciever.transfer(123);
    }

    function sendViaSend(address payable _reciever) external payable { // Its best practice to send ETH using transfer / call not send
        bool success = _reciever.send(123);
        require(success, "Send failed");
    }

    function sendViaCall(address payable _reciever) external payable {
        (bool success,) = _reciever.call{value: 123}("");
        require(success, "Call Failed");
    }
}

contract EthReciever {
    event recieve(uint amount, uint gas);

    receive() external payable {
        emit recieve(msg.value, gasleft());
     }
}