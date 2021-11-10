// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import { IERC721ReceiverUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721ReceiverUpgradeable.sol";
import { IPool } from "./IPool.sol";

interface IERC721ReceivablePool is IERC721ReceiverUpgradeable, IPool {

    

}