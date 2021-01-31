//
//  CalculatorSteps.swift
//  Calculator SwiftUIUITests
//
//  Created by Luiz Eduardo Martins on 30/01/2021.
//

import Foundation
import XCTest

class CalculatorSteps: BaseClass {

    let calculatorScreen = CalculatorScreen()

    func divisionByZero() {
        calculatorScreen.tapButton(.one)
        calculatorScreen.tapButton(.division)
        calculatorScreen.tapButton(.zero)
        calculatorScreen.tapButton(.equal)
    }

    func divideZeroByZero() {
        calculatorScreen.tapButton(.zero)
        calculatorScreen.tapButton(.division)
        calculatorScreen.tapButton(.zero)
        calculatorScreen.tapButton(.equal)
    }

    func sumOperation() {
        calculatorScreen.tapButton(.two)
        calculatorScreen.tapButton(.addition)
        calculatorScreen.tapButton(.five)
        calculatorScreen.tapButton(.equal)
    }

    func subtractionOperationWithPositiveResult() {
        calculatorScreen.tapButton(.six)
        calculatorScreen.tapButton(.subtraction)
        calculatorScreen.tapButton(.five)
        calculatorScreen.tapButton(.equal)
    }

    func subtractionOperationWithNegativeResult() {
        calculatorScreen.tapButton(.three)
        calculatorScreen.tapButton(.subtraction)
        calculatorScreen.tapButton(.nine)
        calculatorScreen.tapButton(.equal)
    }

    func subtractionOperationStartingWithNegativeNumber() {
        calculatorScreen.tapButton(.subtraction)
        calculatorScreen.tapButton(.eight)
        calculatorScreen.tapButton(.subtraction)
        calculatorScreen.tapButton(.six)
        calculatorScreen.tapButton(.equal)
    }

    func muliplicationOperation() {
        calculatorScreen.tapButton(.three)
        calculatorScreen.tapButton(.multiplication)
        calculatorScreen.tapButton(.nine)
        calculatorScreen.tapButton(.equal)
    }

    func decimalOperation() {
        calculatorScreen.tapButton(.five)
        calculatorScreen.tapButton(.point)
        calculatorScreen.tapButton(.five)
        calculatorScreen.tapButton(.subtraction)
        calculatorScreen.tapButton(.one)
        calculatorScreen.tapButton(.point)
        calculatorScreen.tapButton(.one)
        calculatorScreen.tapButton(.equal)
    }

    func numberWithTwoDecimalsOperation() {
        calculatorScreen.tapButton(.eight)
        calculatorScreen.tapButton(.point)
        calculatorScreen.tapButton(.six)
        calculatorScreen.tapButton(.six)
        calculatorScreen.tapButton(.subtraction)
        calculatorScreen.tapButton(.two)
        calculatorScreen.tapButton(.point)
        calculatorScreen.tapButton(.one)
        calculatorScreen.tapButton(.one)
        calculatorScreen.tapButton(.equal)
    }

    func validateCalculatorResult(_ text: String) {
        XCTAssertEqual(calculatorScreen.getOperationResult, text)
    }
}
