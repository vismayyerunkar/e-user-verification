const Registration = artifacts.require('Registration');

module.exports = function(deployer){
    deployer.deployer(Registration,{value:3000000000000000});
}

