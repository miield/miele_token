// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/MieleToken.sol";

contract MieleTokenScript is Script {
    address deployedMieleToken = 0xfbCc4eBb60C38Ab0Ca5e753B475527370E977D9D;

    function run() public {
        uint256 privkey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privkey);

        MieleToken nt = MieleToken(deployedMieleToken);

        // uncomment to mint
        // nt.mint(1);

        vm.stopBroadcast();
    }
}