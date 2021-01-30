//
//  CalculatorScreen.swift
//  Calculator SwiftUIUITests
//
//  Created by Luiz Eduardo Martins on 30/01/2021.
//

import Foundation
import XCTest

class CalculatorScreen {

    var app = XCUIApplication()

    // MARK: Elements
    private var operatorPlusButton: XCUIElement {
        app.buttons["+"].firstMatch
    }

    private var operatorSubtractionButton: XCUIElement {
        app.buttons["−"].firstMatch
    }

    private var operatorMultiplicationButton: XCUIElement {
        app.buttons["×"].firstMatch
    }

    private var operatorDivisionButton: XCUIElement {
        app.buttons["÷"].firstMatch
    }

    private var pointButton: XCUIElement {
        app.buttons["."].firstMatch
    }

    private var operatorEqualButton: XCUIElement {
        app.buttons["="].firstMatch
    }

    private var numberOneButton: XCUIElement {
        app.buttons["1"].firstMatch
    }

    private var numberTwoButton: XCUIElement {
        app.buttons["2"].firstMatch
    }

    private var numberThreeButton: XCUIElement {
        app.buttons["3"].firstMatch
    }

    private var numberFourButton: XCUIElement {
        app.buttons["4"].firstMatch
    }

    private var numberFiveButton: XCUIElement {
        app.buttons["5"].firstMatch
    }

    private var numberSixButton: XCUIElement {
        app.buttons["6"].firstMatch
    }

    private var numberSevenButton: XCUIElement {
        app.buttons["7"].firstMatch
    }

    private var numberEightButton: XCUIElement {
        app.buttons["8"].firstMatch
    }

    private var numberNineButton: XCUIElement {
        app.buttons["9"].firstMatch
    }

    private var numberZeroButton: XCUIElement {
        app.buttons["0"].firstMatch
    }

    private var resultText: XCUIElement {
        app.staticTexts["result_text"].firstMatch
    }

    private var operationText: XCUIElement {
        app.staticTexts["operation_text"].firstMatch
    }

    // MARK: Actions
    var getResultText: String {
        resultText.label
    }

    func tapPlusButton() {
        operatorPlusButton.tap()
    }

    func tapSubtractionButton() {
        operatorSubtractionButton.tap()
    }

    func tapMultiplicationButton() {
        operatorMultiplicationButton.tap()
    }

    func tapDivisionButton() {
        operatorDivisionButton.tap()
    }

    func tapPointButton() {
        pointButton.tap()
    }

    func tapEqualButton() {
        operatorEqualButton.tap()
    }

    func tapNumberOneButton() {
        numberOneButton.tap()
    }

    func tapNumberTwoButton() {
        numberTwoButton.tap()
    }

    func tapNumberThreeButton() {
        numberThreeButton.tap()
    }

    func tapNumberFourButton() {
        numberFourButton.tap()
    }

    func tapNumberFiveButton() {
        numberFiveButton.tap()
    }

    func tapNumberSixButton() {
        numberSixButton.tap()
    }

    func tapNumberSevenButton() {
        numberSevenButton.tap()
    }

    func tapNumberEightButton() {
        numberEightButton.tap()
    }

    func tapNumberNineButton() {
        numberNineButton.tap()
    }

    func tapNumberZeroButton() {
        numberZeroButton.tap()
    }
}
