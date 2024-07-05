# Project-Functions-and-Errors
This Solidity program is a simple function creation that demonstrates the basic error handling statements such as require(), assert() and revert(). The purpose of this program is to demonstrate what I've learned so far in taking the Advanced course on ETH from metacrafters.
# Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract contains six functions mainly the arithmetic operations with the inclusion of modulo operation as well as a function that only accepts positive integers. The contract has two of each error handling statements for require(), assert() and revert(). 

Utilizing REVERT()
- The add function's purpose is a simple arithmetic operation that checks if the sum falls within a certain range (10-100). If it does not, the transaction is reverted with an error message: "Sum must be equal or between 10 and 100".
- The divide function's purpose is a simple arithmetic operation that checks if the denominator is equal to zero. If it is, the transaction is reverted with an error message: "Denominator must be non-zero."

Utilizing REQUIRE()
- The multiply function's purpose is a simple arithmetic operation that checks if both the multiplicand and multiplier are greater than 0, the multiplication operation will proceed as expected. However, if either of these conditions is not met (i.e., they are less than or equal to 0), the require statement will fail and revert the transaction. The string "Both Multiplicand and Multiplier must be greater than zero" will be used as the error message in this case.
- The subtract function's purpose is a simple arithmetic operation that checks whether the minuend is greater than or equal to the subtrahend. If this condition is not met (i.e., if minuend < subtrahend), the function will stop executing and revert all changes made so far, throwing an error with the message "Result would be negative." If the condition is true, the subtraction operation continues and returns the result. 

Utilizing ASSERT()
- The alwaysPostive function's purpose is to check if the input number is greater than or equal to 0. If it isn't (i.e., less than 0), an internal error will be thrown, and all changes made by this transaction will be rolled back.
- The modulus function's purpose is a simple arithmetic operation that checks if the denominator is not equal to zero. If it's zero, the assert statement will throw an error and stop the execution of the current function call. This helps prevent unexpected behavior or errors that could lead to a division by zero. 

This program acts as a basic and clear-cut project showcasing the coding functionalities in Solidity. It can serve as a foundation for developing more advanced projects.

## Getting Started

### Executing program

To run this program, you can utilize Remix, an online Solidity IDE. Begin by visiting the Remix website at https://remix.ethereum.org/.

After accessing the Remix website, create a new file by clicking the "+" icon in the left-hand sidebar. Save the file with a .sol extension (for example, FinalProject.sol). Then, copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

contract ErrorHandling {

// 1. Using the revert error handler for addition and division

    function add(uint _additionA, uint _additionB) public pure returns (uint) {
    }

    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
    }

// 2. Using the require error handler for multiplication and subtraction

    function multiply(uint _multiplicand, uint _multiplier) public pure returns (uint) {
    }

    function subtract(uint _subtractionA, uint _subtractionB) public pure returns (uint) {
    }

// 3. Using the assert error handler for modulus and checking if a number is positive

    function alwaysPositive(int _number) public pure returns (uint) {
    }

    function modulus(uint _numerator, uint _denominator) public pure returns (uint) {
    }
}

```

To compile the code, navigate to the "Solidity Compiler" tab on the left-hand side of the sidebar. Ensure the "Compiler" version is set to "0.8.13", and then click the "Compile FinalProject.sol" button.

After compiling, you can deploy the contract by going to the "Deploy & Run Transactions" tab on the left-hand side of the sidebar. Choose the "ErrorHandling - contracts/ErrorHandling.sol" contract from the dropdown menu and click the "Deploy" button.

Once deployed, you can interact with the contract by utilizing simple arithmetic operations such as add, subtract, multiply, divide, and two other functions, as well as understanding and observing the use of the three different error-handling statements. Select the functions in the left-hand sidebar, and press the "call" button to execute the function.

## Authors

Metacrafter Student Christian
[@_cbso](https://x.com/cbso_)

## License

This project is licensed under the Christian Benjamin License - see the LICENSE.md file for details
