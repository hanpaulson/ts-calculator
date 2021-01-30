//
//  BaseClass.swift
//  Calculator SwiftUIUITests
//
//  Created by Luiz Eduardo Martins on 30/01/2021.
//

import Foundation
import XCTest

class BaseClass: XCTestCase {

    var app = XCUIApplication()

    override func setUp() {
        super.setUp()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
    }
}
