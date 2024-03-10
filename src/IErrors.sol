// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IErrors {
    error NotOwner(address);
    error InsufficientBalance(address, uint256);
}