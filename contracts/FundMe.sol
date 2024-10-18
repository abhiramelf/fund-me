// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**Requirements
* High level: A contract through which users can send money to it and I can withdraw
*
* Steps to build:
* A minimum donation amount in $ needs to be set
* A function to send the funds to the contract
* A function that can call an external oracle to convert between ETH/USD
* A function that can withdraw the amount only by contract owner
*/

contract FundMe {
    uint256 public minAmount = 2 * 1e15;

    address immutable owner;

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value > minAmount, "Please donate atleast the minimum amount!");
    }
}