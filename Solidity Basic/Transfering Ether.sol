//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransferEther {
    function sendEther () public payable {
        //
    }

    function getEther () public view returns (uint) {
        return address(this).balance;
    }
}