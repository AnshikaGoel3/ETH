# Smart Contract Project

This project includes a smart contract that includes functions, demonstrating the use of rquire, revert and assert statements.

## Description

In this project, we have a written a smart contract that implements the require(), revert() and assert() statements.
These statements are used for error handling in solidity.

## Getting Started
### Executing Program
To execute this project we have used Remix IDE (https://remix.ethereum.org/)

1. Start by creating a smart contract named myContract
2. Then create three functions which will demonstrate the use of the three statements
3. code:
``` javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract myContract {
    //function demonstrating the use of require() statement
    function requireFunc(uint a) public pure {
        //it will check if a > 100 or not , if it is not then it will revert with a message
        require(a > 100, "value of a should be grater than 100");
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
```
4. In this code we have completed all the requirements of the project.
5. To test it: firstly, compile the code and then deploy it, after that call functios and check if it working properly. To do this we have compile and deploy options on the left sidebar of the IDE.
6. Interact with the deployed contract by calling the functions requireFunc, revertFunc, and assertFunc with appropriate parameters to verify their behavior.
