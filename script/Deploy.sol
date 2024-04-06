// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/MieleToken.sol";

contract MieleTokenScript is Script {
    function run() public {
        uint256 privkey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privkey);

        MieleToken nt = new MieleToken();

        // comment out to disable free minting
        nt.setMintEnabled(true);

        vm.stopBroadcast();
    }
}