// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract HeirloomTransfer {
    address private holder;

    constructor() {
        holder = msg.sender;
    }

    modifier isHolder() {
        require(msg.sender == holder, "You are not the holder!");
        _;
    }

    function transfer(address Address) external isHolder{
        holder = Address;
    }

    function checkHolder() external isHolder view returns (string memory) {
        return "I am still the holder!";
    }
}

// Has a private account state variable called holder
// Has a self-defined modifier called isHolder that checks whether the caller is the current holder, if the caller is not the holder, the modifier returns the string "You are not the holder!"
// Has a constructor function that sets the account that deployed the contract as the original holder
// Has an external function called transfer() that can be called by the current holder only and takes an address as a parameter and sets it as the new holder value.
// Has an external function called checkHolder() that can be called by the current holder only and returns the string "I am still the holder!"