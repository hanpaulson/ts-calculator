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

    // Add steps here 
    
    func validateCalculatorResult(_ text: String) {
        XCTAssertEqual(calculatorScreen.getOperationResult, text)
    }
}
