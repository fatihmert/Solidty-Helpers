# Solidty Helpers

I am developing for my dApp projects' needs simple library functions. Always will be continue developing in this repository for our needs.

### Folder Structure

#### flat

This is both library and test for copy all to [remix.ide](https://remix.ethereum.org/), and run it.

#### lib

This is only library.

#### tests

This is only Solidity tests.

### Note

If you want help this repository, please don't worry you can create any issue or pull requesting.

## SortingArray

Simple array sorting descending and ascending. Example using;

```solidty
contract C {
    using SortingArray for uint256[];

    uint256[] arr;

    function asc() public view returns(uint256[] memory) {
        return arr.sorting(SortingArray.DIRECTION.ASC);
    }

    function desc() public view returns(uint256[] memory) {
        return arr.sorting(SortingArray.DIRECTION.DESC);
    }
}
```

# TODO
 - [ ] Pulish on to the NPM.
 - [ ] Write Waffle/Chai tests.