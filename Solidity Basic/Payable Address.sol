//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableAddress {
    function sendEth (address payable reciever) public payable {
        reciever.transfer(msg.value);
    }

    function getEth (address _address) public view returns (uint) {
        return _address.balance;
    }
}