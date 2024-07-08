// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

contract ErrorHandling {

// 1. Using the revert error handler for addition and division

    //Checks if the result of the addition would overflow, meaning that the sum exceeds the maximum value an unsigned integer can hold
    function add(uint _additionA, uint _additionB) public pure returns (uint) {
        uint sum = _additionA + _additionB;
        if (sum < 10 || sum > 100) {
            revert("Sum must be equal or between 10 and 100");
        }
        return sum;
    }

    // Checks if the denominator is zero, in which case it reverts the transaction with an error message indicating that "Denominator must be non-zero". 
    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
        if (_denominator == 0) {
            revert("Denominator must be non-zero");
        }
        return _numerator / _denominator;
    }

// 2. Using the require error handler for multiplication and subtraction

    // Checks if the value of the `_multiplier` and `_multiplicand` is greater than zero using the `require` statement.
    function multiply(uint _multiplicand, uint _multiplier) public pure returns (uint) {
        require(_multiplicand > 0 && _multiplier > 0, "Both Multiplicand and Multiplier must be greater than zero");
        return _multiplicand * _multiplier;
    }

    //  Ensure that the result will not underflow, meaning it will not lead to a negative number. 
    function subtract(uint _subtractionA, uint _subtractionB) public pure returns (uint) {
        require(_subtractionA >= _subtractionB, "Result would be negative");
        return _subtractionA - _subtractionB;
    }

// 3. Using the assert error handler for modulus and checking if a number is positive

    // Ensure that the input number is positive.
    function alwaysPositive(int _number) public pure returns (uint) {
        assert(_number >= 0);
        return uint(_number);
    }

    // Ensures the denominator (_denominator) is not zero. This helps to prevent errors or unexpected behavior in smart contracts
    function modulus(uint _numerator, uint _denominator) public pure returns (uint) {
        assert(_denominator != 0);
        return _numerator % _denominator;
    }

}
