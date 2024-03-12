// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Script, console } from "forge-std/Script.sol";
import { Akno } from "../src/Akno.sol";

contract AknoScript is Script {
    Akno akno;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        akno = new Akno();
        console.log("ADDRESS: ", address(akno));

        vm.stopBroadcast();
    }
}
