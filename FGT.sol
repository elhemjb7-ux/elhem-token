// SPDX-License-Identifier: MIT
// Author: ELHEM
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts@5.4.0/token/ERC20/ERC20.sol";

contract FGT is ERC20 {
    constructor() ERC20("ELHEM Token", "FGT") {
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }
}
