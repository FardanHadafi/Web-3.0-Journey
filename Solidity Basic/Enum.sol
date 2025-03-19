// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enum {
    enum Status {
        pending,
        accepted,
        shipped,
        rejected,
        canceled
    }

    Status public status;

    struct Package { // Example combining enum with another data types
        string name;
        Status status;
    }

    Package[] public packages; // Example combining enum with another data types

    function set(Status _status) external { // Set the Status enum by input 
        status = _status;
    }

    function get() external view returns (Status) { // Return all Status enum
        return status;
    }

    function update() external { // Update enum with specific status
        status = Status.shipped;
    }

    function reset() external { // Reset all enum to original value 
        delete status;
    }
}