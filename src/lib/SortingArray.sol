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