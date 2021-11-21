const ConvertLib = artifacts.require("ConvertLib");
const MetaCoin = artifacts.require("MetaCoin");
const strategyBrute = artifacts.require("strategyBrute");
const strategyReflechi = artifacts.require("strategyReflechi");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
  deployer.deploy(strategyBrute);
  deployer.deploy(strategyReflechi);
};
