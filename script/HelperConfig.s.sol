// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {
  struct NetworkConfig {
    address ccipRouter;
    address linkToken;
    address usdcToken;
  }

  NetworkConfig public networkConfig;

  constructor() {
    if (block.chainid == 43113) {
      networkConfig = getSepoliaEthConfig();
    } else {
      revert("Unsupported network");
    }
  }

  function getSepoliaEthConfig() public pure returns (NetworkConfig memory) {
    return NetworkConfig({
      ccipRouter: 0xF694E193200268f9a4868e4Aa017A0118C9a8177,
      linkToken: 0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846,
      usdcToken: 0x5425890298aed601595a70AB815c96711a31Bc65
    });
  }
}