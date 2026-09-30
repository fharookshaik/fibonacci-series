// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Fibonacci {
    function generateSeries(uint n) public pure returns (uint[] memory) {
        require(n > 0, "Length must be greater than 0");

        uint[] memory series = new uint[](n);
        
        if (n == 1) {
            series[0] = 0;
            return series;
        }

        series[0] = 0;
        series[1] = 1;

        for (uint i = 2; i < n; i++) {
            series[i] = series[i - 1] + series[i - 2];
        }

        return series;
    }
}