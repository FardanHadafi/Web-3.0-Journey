// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
    address payable[] public players;
    address payable public winner;

    constructor() {
        manager == msg.sender;
    }

    function participate() public payable {
        require(msg.value >= 1 ether, '1 ether needed to participate');
        players.push(payable(msg.sender));
    }

    function getAllPlayers() public view returns (address payable[] memory) {
        return players;
    }

    function getBalance() public view returns (uint) {
        require(msg.sender == manager, 'Not Authorized');
        return address(this).balance;
    }

    function randomNumber() public view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, players.length)));
    }

    function pickWinner() public {
        require(msg.sender == manager, 'Not Authorized');
        require(players.length >= 3, 'Atleast 3 players are needed');
        uint random = randomNumber();
        uint index = random % players.length;
        winner = players[index];
        winner.transfer(getBalance());
        players = new address payable[](0);
    }
}