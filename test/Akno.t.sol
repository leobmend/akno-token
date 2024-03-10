// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Akno} from "../src/Akno.sol";

contract CounterTest is Test {
    Akno public akno;

    // function setUp() public {
    //     akno = new Akno();
    //     akno.setNumber(0);
    // }

    // function test_Increment() public {
    //     akno.increment();
    //     assertEq(akno.number(), 1);
    // }

    // function testFuzz_SetNumber(uint256 x) public {
    //     akno.setNumber(x);
    //     assertEq(akno.number(), x);
    // }
}
