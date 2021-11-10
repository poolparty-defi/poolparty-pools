// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import { Initializable, OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { IControlledPool } from "./interfaces/IControlledPool.sol";

abstract contract ControlledPool is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable, IControlledPool {

    function initialize() 
        public
        initializer 
    {
        __Ownable_init();
        __ReentrancyGuard_init();
    }

    

}