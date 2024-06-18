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