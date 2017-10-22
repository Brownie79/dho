let BENNS = artifacts.require("./BENNS.sol");
let BENRegistrar = artifacts.require("./BENRegistrar.sol")

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
};
