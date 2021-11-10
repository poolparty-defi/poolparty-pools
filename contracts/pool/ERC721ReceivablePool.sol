// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import { Initializable, OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { IERC721ReceivablePool } from "./interfaces/IERC721ReceivablePool.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

abstract contract ERC721ReceivablePool is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable, IERC721ReceivablePool {

    mapping(address => IERC721) private _storedERC721Tokens;

    function initialize() 
        public
        initializer 
    {
        __Ownable_init();
        __ReentrancyGuard_init();
    }

    function depositERC721ToPool() 
    {

    }

}