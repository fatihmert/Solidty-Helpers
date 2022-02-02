// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library SortingArray {
    enum DIRECTION{ ASC, DESC }

    function sorting(uint256[] storage array, DIRECTION direction) internal view returns(uint256[] memory) {
        if (array.length == 0) {
            return new uint256[](0);
        }

        uint256 size = array.length;
        uint256[] memory memArray = array;

        for(uint i = 0; i < size; ++i){
            for(uint j = i + 1; j < size; ++j){
                if( (memArray[i] < memArray[j] && direction == DIRECTION.DESC) || (memArray[i] > memArray[j] && direction == DIRECTION.ASC) ) {
                    uint256 tmpPoint = memArray[i];
                    memArray[i] = memArray[j];
                    memArray[j] = tmpPoint;
                }
            }
        }

        return memArray;
    }
}

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