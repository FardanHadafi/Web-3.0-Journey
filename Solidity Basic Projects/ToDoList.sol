// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function insert(string calldata _text) public {
        todos.push(Todo({text: _text, completed: false}));
    }

    function update(uint index, string calldata _text) public {
        todos[index].text = _text;
    }

    function completed(uint index) public {
        todos[index].completed = !todos[index].completed;
    }
}