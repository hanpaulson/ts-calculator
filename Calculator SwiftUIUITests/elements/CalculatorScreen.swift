//
//  CalculatorScreen.swift
//  Calculator SwiftUIUITests
//
//  Created by Luiz Eduardo Martins on 30/01/2021.
//

import Foundation
import XCTest

class CalculatorScreen {

    let app = XCUIApplication()

    // MARK: Elements
    enum CalculatorElements: String {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case zero = "0"
        case addition = "+"
        case subtraction = "−"
        case multiplication = "×"
        case division = "÷"
        case point = "."
        case equal = "="
        case result = "result_text"
    }

    // MARK: Actions
    func tapButton(_ element: CalculatorElements) {
        app.buttons[element.rawValue].firstMatch.tap()
    }

    var getOperationResult: String {
        app.staticTexts[CalculatorElements.result.rawValue].firstMatch.label
    }
}
