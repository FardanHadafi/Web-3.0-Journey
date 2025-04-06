// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    enum VoteStates {Absent, Yes, No} // Enum for voters change their choice
    uint constant MAX_PROPOSALS = 10;

    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
        mapping(address => VoteStates) voteState;
        bool executed;
    }

    Proposal[] public proposals;

    event ProposalCreated(uint);
    event CastVote(uint, address indexed);

    mapping(address => bool) members;

    constructor(address[] memory _members) {
        for(uint i; i < _members.length; i++) {
            members[_members[i]] = true;
        }
        members[msg.sender] = true;
    }

    function newProposal(address _target, bytes calldata _data) external { // Create a new proposal
    require(members[msg.sender], "You are not a member");
    emit ProposalCreated(proposals.length);
       Proposal storage proposal = proposals.push();
       proposal.target = _target;
       proposal.data = _data;
    }

    function castVote(uint256 proposalIndex, bool support) external { // Cast vote by inputed boolean value true / false
    require(members[msg.sender], "You are not a member");
        Proposal storage proposal = proposals[proposalIndex];

        // clear out previous vote
        if(proposal.voteState[msg.sender] == VoteStates.Yes) {
            proposal.yesCount--;
        }

        if(proposal.voteState[msg.sender] == VoteStates.No) {
            proposal.noCount--;
        }

        if(support) {
            proposal.yesCount++; // true
        } else {
            proposal.noCount++; // false
        }

        // we're tracking whether or not someone has already voted 
        // and we're keeping track as well of what they voted
        proposal.voteState[msg.sender] = support ? VoteStates.Yes : VoteStates.No;
        
        emit CastVote(proposalIndex, msg.sender);

        if(proposal.yesCount == MAX_PROPOSALS && !proposal.executed) {
            (bool success, ) = proposal.target.call(proposal.data);
            require(success);
        }
    }
}