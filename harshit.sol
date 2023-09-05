// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract UniqueToken {

    //public variables
    string public tokenName = "Harsh";
    string public tokenSymbol = "HAR";
    uint public totalSupply = 10000;
    
    // Mapping variable 
    mapping(address => uint) public balances;

    // Mint function 
    function mintTokens(address minting, uint amount1) public {
        totalSupply += amount1;
        balances[minting] += amount1;
    }

    // Burn function 
    function burnTokens(address burning, uint amount2) public {
        if (balances[burning] >= amount2) {
            totalSupply -= amount2;
            balances[burning] -= amount2;
        }
    }
}
