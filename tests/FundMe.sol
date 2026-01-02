// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FundMe {

    AggregatorV3Interface internal dataFeed;

    mapping(address => uint256) public fundersToAmount;

    uint256 MINIMUM_VALUE = 1 * 10 ** 18;


    constructor()

    function fund() external payable {
        require(msg.value >= MINIMUM_VALUE, "Didn't send enough!");
        fundersToAmount[msg.sender] = msg.value;
    }



    function getChainlinkDataFeedLatestAnswer() public view returns (int256) {
        // prettier-ignore
        (
        /* uint80 roundId */
        ,
        int256 answer,
        /*uint256 startedAt*/
        ,
        /*uint256 updatedAt*/
        ,
        /*uint80 answeredInRound*/
        ) = dataFeed.latestRoundData();
        return answer;
    }

}