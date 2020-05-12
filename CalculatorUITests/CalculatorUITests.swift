//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by Mikhail Ladutska on 5/11/20.
//  Copyright © 2020 Mikhail Ladutska. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {

    func testFactorial() {
        let app = XCUIApplication()
        app.launch()
        app.buttons["5"].tap()
        app.buttons["x!"].tap()
        XCTAssertEqual(app.staticTexts.element(matching:.any, identifier: "result").label, "120.0")
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
