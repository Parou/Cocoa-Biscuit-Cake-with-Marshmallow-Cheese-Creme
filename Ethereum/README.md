# Cocoa-Biscuit Cake with Marshmallow-Cheese Creme

## Ethereum Implementation

* Easy Method (Online Compiler)
    * Open [Remix](https://remix.ethereum.org)
    * Import Cake.sol
    * Complile and Deploy using either JavaScriptVM or [Ropsten TestNet](https://medium.com/swlh/deploy-smart-contracts-on-ropsten-testnet-through-ethereum-remix-233cd1494b4b)
* Using Truffle
    * cd Ethereum
    * truffle compile
    * truffle migrate --reset
    * truffle console
        * < Use web3.js Documentation to call the functions.>

## Using the Cake Contract to make Cake
 ##### The contract is already deployed at ` 0x95263a80414AbC246Bc6B0FF976fC613F9F5817A `.
 ##### Verify the same at `https://ropsten.etherscan.io/tx/0x1df62e68611f7393afc35b3a73177f76985943f66ff2c50a18a09f1a0c18ae93`.

* Interact using Remix and MetaMask
    * In Run, Enter `0x95263a80414AbC246Bc6B0FF976fC613F9F5817A` in At Address and Deploy.
    * Click PrepareCake To read Instructions.
    * Click NextInst to move the index to next Instruction and click PrepareCake to proceed.
    * Click resetInstruction to goto first instruction.
    * Enter the ingredients content of the made cake in MakeCake fucntion and Check the Quality of cake.

## Security Handeling

The Contract Deployer is the creator and first member of *AliceBakers*, incase of contarct being removed from network the contract balance is sent to Creator.

The Members of *AliceBakers* can assign new Bakers to be the part of AliceBakers, However one need not be part of AliceBakers to use the contract to their need.
Only use of AliceBakers is the authority to remove the contract from network using *KillSwitch* fuction. 
