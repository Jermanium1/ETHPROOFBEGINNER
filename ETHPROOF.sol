// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS

Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
Your contract will have a mapping of addresses to balances (address => uint)
You will have a mint function that takes two parameters: an address and a value. 
The function then increases the total supply by that number and increases the balance 
of the “sender” address by that amount
Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
and from the balance of the “sender”.
Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
to the amount that is supposed to be burned.
*/
contract SimpleToken {
 // public variables here
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;
// mapping variable here
    mapping(address => uint256) public balances;

    constructor(string memory name, string memory abbrv, uint256 initialSupply) {
        tokenName = name;
        tokenAbbrv = abbrv;
        totalSupply = initialSupply;
        balances[msg.sender] = initialSupply;
    }
// mint function
    function mint(address to, uint256 value) public {
        require(to != address(0), "Invalid address");
        totalSupply += value;
        balances[to] += value;
    }
// burn function
    function burn(address from, uint256 value) public {
        require(balances[from] >= value, "Insufficient balance");
        totalSupply -= value;
        balances[from] -= value;
    }
}
