// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

import {Script} from "forge-std/Script.sol";
import {TransferUSDC} from "../src/TransferUsdc.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployTransferUsdc is Script {
  TransferUSDC public transferUsdc;
  function run() public returns(TransferUSDC) {
    transferUsdc = new TransferUSDC(0xF694E193200268f9a4868e4Aa017A0118C9a8177, 0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846, 0x5425890298aed601595a70AB815c96711a31Bc65);
    return (transferUsdc);
  }
}