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
        calculatorScreen.tapNumberOneButton()
        calculatorScreen.tapDivisionButton()
        calculatorScreen.tapNumberZeroButton()
        calculatorScreen.tapEqualButton()
    }

    func divideZeroByZero() {
        calculatorScreen.tapNumberZeroButton()
        calculatorScreen.tapDivisionButton()
        calculatorScreen.tapNumberZeroButton()
        calculatorScreen.tapEqualButton()
    }

    func sumOperation() {
        calculatorScreen.tapNumberTwoButton()
        calculatorScreen.tapPlusButton()
        calculatorScreen.tapNumberFiveButton()
        calculatorScreen.tapEqualButton()
    }

    func subtractionOperationWithPositiveResult() {
        calculatorScreen.tapNumberSixButton()
        calculatorScreen.tapSubtractionButton()
        calculatorScreen.tapNumberFiveButton()
        calculatorScreen.tapEqualButton()
    }

    func subtractionOperationWithNegativeResult() {
        calculatorScreen.tapNumberThreeButton()
        calculatorScreen.tapSubtractionButton()
        calculatorScreen.tapNumberNineButton()
        calculatorScreen.tapEqualButton()
    }

    func subtractionOperationStartingWithNegativeNumber() {
        calculatorScreen.tapSubtractionButton()
        calculatorScreen.tapNumberEightButton()
        calculatorScreen.tapSubtractionButton()
        calculatorScreen.tapNumberSixButton()
        calculatorScreen.tapEqualButton()
    }

    func muliplicationOperation() {
        calculatorScreen.tapNumberThreeButton()
        calculatorScreen.tapMultiplicationButton()
        calculatorScreen.tapNumberNineButton()
        calculatorScreen.tapEqualButton()
    }

    func decimalOperation() {
        calculatorScreen.tapNumberFiveButton()
        calculatorScreen.tapPointButton()
        calculatorScreen.tapNumberFiveButton()
        calculatorScreen.tapSubtractionButton()
        calculatorScreen.tapNumberOneButton()
        calculatorScreen.tapPointButton()
        calculatorScreen.tapNumberOneButton()
        calculatorScreen.tapEqualButton()
    }

    func numberWithTwoDecimalsOperation() {
        calculatorScreen.tapNumberEightButton()
        calculatorScreen.tapPointButton()
        calculatorScreen.tapNumberSixButton()
        calculatorScreen.tapNumberSixButton()
        calculatorScreen.tapSubtractionButton()
        calculatorScreen.tapNumberTwoButton()
        calculatorScreen.tapPointButton()
        calculatorScreen.tapNumberOneButton()
        calculatorScreen.tapNumberOneButton()
        calculatorScreen.tapEqualButton()
    }

    func validateCalculatorResult(_ text: String) {
        XCTAssertEqual(calculatorScreen.getResultText, text)
    }
}
