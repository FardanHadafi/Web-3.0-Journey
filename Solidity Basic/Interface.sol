// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// This Interface is calling Counter contract in another file
interface ICounter {
    function count() external view returns(uint);
    function inc() external;
}

contract CounterInterface {  // Interface is used to call other contract without copying the code inside it 
    uint public count;

    function example(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}
