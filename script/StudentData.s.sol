// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {StudentData} from "../src/studentdata.sol";

contract StudentDataScript is Script {
    StudentData public studentDataInfo;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        studentDataInfo = new StudentData("GeorgeChisom", 5);

        vm.stopBroadcast();
        console.log("studentData contract deployed at:", address(studentDataInfo));
    }
}