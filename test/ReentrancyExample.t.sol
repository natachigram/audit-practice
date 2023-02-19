// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// import "forge-std/Test.sol";
// import "../src/ReentrancyExample.sol";

// contract TestReentrancyExample is Test {
//   ReentrancyExample contractToTest;

//   function beforeEach() public {
//     contractToTest = new ReentrancyExample();
//   }

//   function testWithdraw() public {
//     // Deposit some ether into the contract
//     contractToTest.deposit{value: 100}();

//     // Verify that the contract balance is correct
//     assertEq(contractToTest.getBalance(), 100, "Incorrect balance before withdrawal");

//     // Try to withdraw more ether than is in the contract
//     bool success = contractToTest.withdraw(200);
//     assertFalse(success, "Withdrawal succeeded with insufficient balance");

//     // Verify that the contract balance is still correct
//     assertEq(contractToTest.getBalance(), 100, "Incorrect balance after failed withdrawal");

//     // Try to withdraw an amount that's less than or equal to the balance
//     bool success = contractToTest.withdraw(50);
//     assertTrue(success, "Withdrawal failed with sufficient balance");

//     // Verify that the contract balance has been updated
//     assertEq(contractToTest.getBalance(), 50, "Incorrect balance after successful withdrawal");
//   }
// }