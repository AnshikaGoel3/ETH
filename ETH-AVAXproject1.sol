// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract myContract {
    //function demonstrating the use of require() statement
    function requireFunc(uint a) public pure {
        //it will check if a > 100 or not , if it is not then it will revert with a message
        require(a > 100, "value of a should be greater than 100");
    }

    //function demonstarting the use of revert() statement 
    function revertFunc(int a) public pure {
        //it will revert with a message if value of 'a' is between 0 and 10 (inclusive)
        if(a >= 0 && a <= 10) {
            revert("value of a should not lie between 0 and 10");
        }
    }

    //function demonstarting the use of assert() statement
    function assertFunc(int a) public pure {
        //it is used to make sure that value of 'a' must be greater than 0 otherwise it will return a bug
        assert(a > 0);
    }
}
