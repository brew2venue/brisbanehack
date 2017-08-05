pragma solidity ^0.4.10;
contract brew2venue{
    enum beerType {lager, stout, porter, ipa}
    struct bottle {
            string batch;
            uint256 bottleDate;
            int cost;
            int abv;
    }
    function add (string _batch, int _cost, int _abv)
    {
        bottle memory _bottle = bottle (_batch, block.timestamp, _cost, _abv);
        bottles.push(_bottle);
    }
    bottle [] public bottles;

}