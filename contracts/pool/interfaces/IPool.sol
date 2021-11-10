// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

interface IPool {

    function depositToPool(
        address tokenContract,
        uint256 amount,
        address depositor
    ) external;

    function withdrawFromPool(
        address tokenContract,
        uint256 amount
    ) external returns (uint256);

    function allow

}