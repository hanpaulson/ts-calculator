//
//  Calculator_SwiftUIUITests.swift
//  Calculator SwiftUIUITests
//
//  Created by Hannah Paulson on 14/01/2021.
//

import XCTest

class Calculator_SwiftUIUITests: BaseClass {

    let calculatorSteps = CalculatorSteps()

    func testDivisionByZero() {
        calculatorSteps.divisionByZero()
        calculatorSteps.validateCalculatorResult("inf")
    }

    func testDivideZeroByZero() {
        calculatorSteps.divideZeroByZero()
        calculatorSteps.validateCalculatorResult("nan")
    }

    // This test should fail because we have an issue with "+" button
    func testSumOperation() {
        calculatorSteps.sumOperation()
        calculatorSteps.validateCalculatorResult("9.0")
    }

    func testSubtractionOperationWithPositiveResult() {
        calculatorSteps.subtractionOperationWithPositiveResult()
        calculatorSteps.validateCalculatorResult("1.0")
    }

    func testSubtractionOperationWithNegativeResult() {
        calculatorSteps.subtractionOperationWithNegativeResult()
        calculatorSteps.validateCalculatorResult("-6.0")
    }

    // This test is disabled due to a fatal error that is throwing when we have an issue with a negative number
    // as the first parameter in the operation
    func testSubtractionOperationStartingWithNegativeNumber() {
        calculatorSteps.subtractionOperationStartingWithNegativeNumber()
        calculatorSteps.validateCalculatorResult("-15.0")
    }

    func testMultiplicationOperation() {
        calculatorSteps.muliplicationOperation()
        calculatorSteps.validateCalculatorResult("27.0")
    }

    func testDecimalOperation() {
        calculatorSteps.decimalOperation()
        calculatorSteps.validateCalculatorResult("4.4")
    }

    // This test should fail because we have an issue with more than one decimal place operations
    func testDecimalNumberWithTwoDecimalsOperation() {
        calculatorSteps.numberWithTwoDecimalsOperation()
        calculatorSteps.validateCalculatorResult("6.55")
    }
}
