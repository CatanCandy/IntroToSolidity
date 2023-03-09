// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract AlgOp {
    uint a;
    uint b;

    constructor (uint _a, uint _b) {
        a = _a;
        b = _b;
    }

    function sum() external view returns(uint) {
        uint c = a + b;
        return c;
    }

    function diff() external view returns(uint) {
        uint c = a - b;
        return c;
    }

    function multiply() external view returns(uint) {
        uint c = a * b;
        return c;
    }

    function div() external view returns(uint) {
        uint c = a / b;
        return c;
    }
}