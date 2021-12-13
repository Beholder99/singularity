var SingularityToken = artifacts.require("SingularityToken");

module.exports = function(deployer) {
    deployer.deploy(SingularityToken);
};