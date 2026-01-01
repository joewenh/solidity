// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FundMe {
    mapping(address => uint256) public fundersToAmount;

    uint256 MINIMUM_VALUE = 1 * 10 ** 18;

    function fund() external payable {
        require(msg.value >= MINIMUM_VALUE, "Didn't send enough!");
        fundersToAmount[msg.sender] = msg.value;
    }
}