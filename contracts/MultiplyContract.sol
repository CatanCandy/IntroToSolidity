// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MultiplyContract {
    uint256 product;

    function multiply(uint256 a, uint256 b) public{
        product = a*b;
    }

    function getProduct() public view returns (uint256){
        return product;
    }    
}