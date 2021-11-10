// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import { Initializable, OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { IERC721ReceivablePool } from "./interfaces/IERC721ReceivablePool.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

abstract contract SingleTokenPool is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    address internal _underlying;

    function initialize() 
        public
        initializer 
    {
        __Ownable_init();
        __ReentrancyGuard_init();
    }

    function _token()
        internal
        view
        returns (IERC20) 
    {

    }

}