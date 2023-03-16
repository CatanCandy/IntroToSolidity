// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public tokenName = "BESTCOINS";
    string public tokenAbrev = "BTCN";
    
    uint256 public totalSupply = 1000000;

    mapping(address => uint256) private balance;
    mapping(address => bool) private admin;

    constructor(){
        admin[msg.sender] = true;
    }

    modifier isAdmin(){
        require(admin[msg.sender] == true, "You cannot mint or burn" );
        _;
    }
    function mint(address recipient, uint256 amount) public isAdmin{
        require(recipient != address(0), "Cannot send to this address");
        totalSupply += amount;
        balance[recipient] += amount;
    }
    
    function burn(uint256 amount) public isAdmin{
        require(amount <= totalSupply, "Not enough tokens to burn!");
        balance[address(0)] += amount;
        totalSupply -= amount;


    }

    function transfer(address recipient, uint256 amount) public {
        require(amount <= balance[msg.sender], "Not enough tokens to send!");
        balance[recipient] += amount;
        balance[msg.sender] -= amount;
    }
}

