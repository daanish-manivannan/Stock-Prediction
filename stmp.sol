// SPDX-License-Identifier: GPL-3.0-or-later


pragma solidity ^0.8.0;

contract StockMarket {
    struct Stock {
        uint256 prevClose;
        uint256 open;
        uint256 high;
        uint256 low;
        uint256 close;
        uint256 volume;
    }

    mapping(string => Stock) public stocks;
    
    function addStock(string memory symbol, uint256 prevClose, uint256 open, uint256 high, uint256 low, uint256 close, uint256 volume) public {
        Stock memory newStock = Stock(prevClose, open, high, low, close, volume);
        stocks[symbol] = newStock;
    }

    function getStock(string memory symbol) public view returns (uint256, uint256, uint256, uint256, uint256, uint256) {
        Stock memory stock = stocks[symbol];
        return (stock.prevClose, stock.open, stock.high, stock.low, stock.close, stock.volume);
    }

    function updateStock(string memory symbol, uint256 prevClose, uint256 open, uint256 high, uint256 low, uint256 close, uint256 volume) public {
        Stock memory stock = stocks[symbol];
        stock.prevClose = prevClose;
        stock.open = open;
        stock.high = high;
        stock.low = low;
        stock.close = close;
        stock.volume = volume;
        stocks[symbol] = stock;
    }

    function deleteStock(string memory symbol) public {
        delete stocks[symbol];
    }

    function getAveragePrice(string memory symbol) public view returns (uint256) {
        Stock memory stock = stocks[symbol];
        return (stock.open + stock.high + stock.low + stock.close) / 4;
    }

    function getVolumeWeightedPrice(string memory symbol) public view returns (uint256) {
        Stock memory stock = stocks[symbol];
        return (stock.volume * stock.close) / (stock.volume + 1);
    }

    
      
}




