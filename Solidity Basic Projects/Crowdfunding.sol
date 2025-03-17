// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    struct Request {
        string description;
        address payable recipient;
        uint value;
        bool completed;
        uint noOfVoters;
        mapping(address => bool) voters;
    }

    mapping(address => uint) public contributors;
    mapping(uint => Request) public request;
    address public manager;
    uint public numOfContributors;
    uint public raisedAmount;
    uint public deadline;
    uint public minimumContribution;
    uint public numRequest;
    uint public target;

    constructor(uint _target, uint _deadline) {
        manager = msg.sender;
        target = _target;
        deadline = block.timestamp + _deadline;
        minimumContribution = 1 ether;
    }

    modifier onlyManager() {
        require(msg.sender == manager, 'You are not the manager');
        _;
    }

    function createRequest(string calldata _description, address payable _recipient, uint _value) public onlyManager {
        Request storage newRequest = request[numRequest];
        numRequest++;
        newRequest.description = _description;
        newRequest.recipient = _recipient;
        newRequest.value = _value;
        numOfContributors++;
        newRequest.completed = false;
        newRequest.noOfVoters = 0;
    }

    function contribution () public payable {
        require(msg.value >= minimumContribution, 'Minimum Contribution is required');
        require(block.timestamp < deadline, 'Deadline has passed');

        if (contributors[msg.sender] == 0) {
            numOfContributors++;
        }

        contributors[msg.sender] += msg.value;
        raisedAmount += msg.value;
    }

    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }

    function refund() public {
        require(block.timestamp > deadline && raisedAmount < target, 'You are not eligible to refund');
        require(contributors[msg.sender] > 0, 'You are not contributors');
        payable(msg.sender).transfer(contributors[msg.sender]);
        contributors[msg.sender] = 0;
    }

    function voteRequest (uint _requestNo) public {
        require(contributors[msg.sender] > 0, 'You are not contributors');
        Request storage thisRequest = request[_requestNo];
        require(thisRequest.voters[msg.sender] == false, 'You have already voted');
        thisRequest.voters[msg.sender] = true;
        thisRequest.noOfVoters++;
    }

    function makePayment (uint _numRequest) public onlyManager {
        require(raisedAmount >= target, 'Target not yet reached');
        Request storage thisRequest = request[_numRequest];
        require(thisRequest.completed == false, 'This request has been completed');
        require(thisRequest.noOfVoters > numOfContributors / 2, 'You need more than half of the contributor to complete this request');
        thisRequest.recipient.transfer(thisRequest.value);
        thisRequest.completed = true;
    }
}