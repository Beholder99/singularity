// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract Token
{
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public allowance;

    uint public totalSupply = 10000 * 10 ** 18;
    string public name = "SINGULARITYTOKEN";
    string public symbol = "SING";
    uint public decimals = 18;

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
    constructor(){    
        balances[msg.sender] = totalSupply;
    }

    function balanceOf(address owner) public view returns(uint) {
        return balances[owner];
    }

    function transfer(address to, uint value) public returns(bool){

        require(balanceOf(msg.sender) >= value, 'Saldo Insuficiente');
        balances[to] += value;
        balances[msg.sender] -= value;
        emit Transfer(msg.sender, to, value);
        return true;
    }

    function approve(address spender, uint value) public {
        allowance[msg.sender][spender] = value;

    }
}