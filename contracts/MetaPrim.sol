// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MultiplyContract {
    address constant myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public numWei;

// Write a smart contract that takes some ether from the user. Find out its value in units of:

// wei
// ether
// gwei

    function getConvert() public view returns (uint){
        return numWei;
    }

    function setEther(uint numEther) public {
        numWei = numEther * (10**18);
    }
}