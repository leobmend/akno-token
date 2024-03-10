// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Script, console } from "forge-std/Script.sol";
import { Akno } from "../src/Akno.sol";

contract AknoScript is Script {
    Akno akno;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0x3bde3ad6daa057ec1e84ce025b5990db116555f2d1cd2dc3827b439ca2315e52);

        akno = new Akno();
        console.log("ADDRESS: ", address(akno));

        vm.stopBroadcast();
    }
}
