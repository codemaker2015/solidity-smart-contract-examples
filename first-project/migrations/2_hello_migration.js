const HelloWorld = artifacts.require("HelloWorld");
 
module.exports = function (deployer) {
    const yourName = "Codemaker";
    deployer.deploy(HelloWorld, yourName);
};