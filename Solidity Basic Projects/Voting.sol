// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    enum VoteStates {Absent, Yes, No} // Enum for voters change their choice

    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
        mapping(address => VoteStates) voteState;
    }

    Proposal[] public proposals;

    function newProposal(address _target, bytes calldata _data) external { // Create a new proposal
       Proposal storage proposal = proposals.push();
       proposal.target = _target;
       proposal.data = _data;

    }

    function castVote(uint256 proposalIndex, bool support) external { // Cast vote by inputed boolean value true / false
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
    }
}