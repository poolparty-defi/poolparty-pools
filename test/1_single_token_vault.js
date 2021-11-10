const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');
const web3 = require('Web3');
require('dotenv').config();

const PartyTokenAddress = '0x7A26Ac6078f3354DBec221Dbe92e53fAda5892b8';

contract("SingleTokenVaultUpgradeable", accounts => {

    before(async () => {
        
    });

    describe("#constructor()", async () => {
        it("Should set the underlying token contract address.", async () => {
            //assert.notEqual(await vault.address, 0);
            // enabled doesn't matter.
        });
    });
});