// to interact with the contract
const HelloWorld = artifacts.require("HelloWorld");
 
contract('HelloWorld', () => {
 
    // initialise the contract instance before running tests
    let contractInstance = null;
    before(async () => {
        contractInstance = await HelloWorld.deployed();
    });
 
    // TEST 1
    it('initial name should be Codemaker', async () => {
        // call contract's function
        const currentName = await contractInstance.getName.call();
        // check condition
        assert.equal(currentName, "Codemaker", "the name is not Codemaker");
    });
 
    // TEST 2
    it('should change name in Vishnu', async () => {
        // change name in contract
        await contractInstance.changeName("Vishnu");
        // get the current name
        const currentName = await contractInstance.getName.call();
        // check condition
        assert.equal(currentName, "Vishnu", "the name is not Vishnu");
    }); 
});