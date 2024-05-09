//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.25;


import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract priceConsumerV3 {

    AggregatorV3Interface internal priceFeed;

    constructor(){ 
        priceFeed = AggregatorV3Interface (0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
    }

    function getPublicPrice() view public returns (int){
        (,int price,,,) = priceFeed.latestRoundData();
        return price;
    }
}