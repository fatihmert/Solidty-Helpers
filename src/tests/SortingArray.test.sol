// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./../lib/SortingArray.sol";

contract Test_SortingArray {
    using SortingArray for uint256[];

    uint256[] arr;

    constructor(){
        arr.push(1);
        arr.push(1);
        arr.push(7);
        arr.push(3);
        arr.push(13);
        arr.push(33);
        arr.push(39);
        arr.push(31);
    }


    function get() public view returns(uint256[] memory) {
        return arr;
    }

    function asc() public view returns(uint256[] memory) {
        return arr.sorting(SortingArray.DIRECTION.ASC);
    }

    function desc() public view returns(uint256[] memory) {
        return arr.sorting(SortingArray.DIRECTION.DESC);
    }
}