const SimpleToken = artifacts.require("./SimpleToken.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleToken, "Bitpower", "BPP", 18, 100000000);
};
