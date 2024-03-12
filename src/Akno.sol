// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import { IErrors } from "./IErrors.sol";

contract Akno is IErrors {
    string private _name;
    string private _symbol;

    uint8 private _decimals;
    uint256 private _totalSupply;

    address _owner;

    mapping(address account => uint256) private _balances;
    mapping(address account => mapping(address spender => uint256)) private _allowances;

    constructor() {
        _name = "Akno";
        _symbol = "AKN";
        _decimals = 8;
        _owner = msg.sender;
        mint(address(0), 1000 * _decimals);
    }

    function name() public view returns (string memory) {
        return _name;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function whoIsOwner() public view returns (address) {
        return _owner;
    }

    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    function transfer(address to, uint256 value) public {
        address from = msg.sender;

        if (_balances[from] <= value) {
            revert InsufficientBalance(from, value);
        }

        _balances[from] -= value;
        _balances[to] += value;
    }

    function mint(address to, uint256 value) public {
        if (msg.sender != _owner) {
            revert NotOwner(to);
        }
        if (to == address(0)) {
            to = _owner;
        }

        _balances[to] += value;
        _totalSupply += value;
    }

    function burn(uint256 value) public {
        if (_balances[msg.sender] > value) {
            value = _balances[msg.sender];
        }

        _balances[msg.sender] -= value;
        _totalSupply -= value;
    }
}
