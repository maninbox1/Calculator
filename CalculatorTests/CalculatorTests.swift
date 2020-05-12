//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Mikhail Ladutska

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    func testFactorial() {
          let sut = ViewController()
          let value = 5
          let factorialValue = sut.factorial(value)
          XCTAssertEqual(factorialValue, 120)
    }
    
    func testSqrt() {
        let sut = ViewController()
        let value: Float = 100
        let sqrtValue = sut.findSqrt(number: value)
        XCTAssertEqual(sqrtValue, 10)
    }
    
}
