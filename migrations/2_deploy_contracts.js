const { deployProxy, upgradeProxy, admin } = require('@openzeppelin/truffle-upgrades');
require('dotenv').config();

var SingleTokenVaultUpgradeable = artifacts.require("./vault/SingleTokenVaultUpgradeable.sol");

module.exports = async function(deployer, network, accounts) {

    if(network == 'rinkeby_test' || network == 'avax_c_test')  {
        return;
    }

    let singleVault = await SingleTokenVaultUpgradeable.deployed();

    await upgradeProxy(singleVault.address, SingleTokenVaultUpgradeable, ['0x7A26Ac6078f3354DBec221Dbe92e53fAda5892b8', true])

    console.log("single add: ", singleVault.address);

    let tokenBalance = await singleVault.tokenBalance();

    console.log("Single token bal: ", tokenBalance.toString());

}