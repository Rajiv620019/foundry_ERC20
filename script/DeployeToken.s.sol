// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Lamp} from "../src/Lamp.sol";

contract DeployOurToken {
    uint256 public constant TOTAL_SUPPLY = 100 ether;

    function run() external returns (Lamp) {
        vm.startBroadcast();
        Lamp lamp = new Lamp(TOTAL_SUPPLY);
        vm.stopBroadcast();
        return lamp;
    }
}
