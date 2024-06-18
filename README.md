# Smart Contract Project

This project includes a smart contract that includes functions, demonstrating the use of require, revert and assert statements.

## Description

In this project, we have  written a smart contract 'UniversityAdmission' for managing university admission based on scores. It implements require(), revert() and assert() statements.
These statements are used for error handling in solidity.

## Getting Started
### Executing Program
To execute this project we have used Remix IDE (https://remix.ethereum.org/)

1. Start by creating a smart contract named universityAdmission
2. Then create three functions which will demonstrate the use of the three error handling statements
3. Create a Function setScore which will set the score for a particular student address. It is using a require() statement to ensure that score is valid.
4. Then, create a function isEligible which is using assert() statement to set up the atleast requirement for eligibility that is score>=75.
5. Then, create a function checkEligibility which is using revert() statement which is used to display the eligibilty status according to the score of the student.
6. Code:
``` javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//created a  contract named UniversityAdmission
contract UniversityAdmission {

    //state variable studentScores that stores the score for a praticular student address
    mapping(address => uint) public studentScores;

    function setScore(address student, uint score) public {
        // used require() statement to ensure that score is between 0 and 100(inclusive) otherwise it will be invalid
        require(score >= 0 && score <= 100, "Invalid score, score must be between 0 and 100(inclusive)");
        studentScores[student] = score;
    }

    function isEligible(address student) public view returns(bool) {
        uint score = studentScores[student];
        //assert() statement to ensure the score is atleast 75 for eligibility
        assert(score >= 75);
        return true;
    }

    function checkEligibility(address student)  public view{
        uint score = studentScores[student];
        //used revert() statement to display the eligibility message according to the score of the student
        if(score < 75) {
            revert("Student is not eligible for university admission");
        }
        else {
            revert("Student is eligible for university admission");
        }
    }
}
```
4. In this code we have completed all the requirements of the project.
5. To test it: firstly, compile the code and then deploy it, after that call functios and check if it working properly. To do this we have compile and deploy options on the left sidebar of the IDE.
6. Interact with the deployed contract by calling the functions requireFunc, revertFunc, and assertFunc with appropriate parameters to verify their behavior.
