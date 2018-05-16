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
 ##### The contract is already deployed at ` 0xa78bdbdbea769cb86c38d626d111bd84b7bb31ff `.
 ##### Verify the same at `https://ropsten.etherscan.io/tx/0x79ce1815edcea83a56142872156c01bddedf907e2fa2ba9a987c2a14664d3a6e`.

* Interact using Remix and MetaMask
    * In Run, Enter `0xa78BDbDBEA769cB86C38d626D111BD84b7bB31fF` in At Address and Deploy.
    * Click PrepareCake To read Instructions.
    * Click NextInst to move the index to next Instruction and click PrepareCake to proceed.
    * Enter the ingredients content of the made cake in MakeCake fucntion and Check the Quality of cake.
