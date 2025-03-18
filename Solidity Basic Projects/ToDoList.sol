// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToDoList {
    // Insert
    // Update
    // Read from array of structs
    struct Todo {
        string name;
        bool completed;
    }

    Todo[] public todos;

    function insert(string calldata _name) external {
        todos.push(Todo({name: _name, completed: false}));
    }

    function update(uint _index, string calldata _text) external {
        todos[_index].name = _text;
    }

    function read(uint index) external view returns (Todo memory) { // same function as public identifier with Todo[]
        return todos[index];
    }

    function completed(uint index) external {
        todos[index].completed = !todos[index].completed;
    }
}