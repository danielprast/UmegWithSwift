//
//  FactorialNumberTest.swift
//  Created by Daniel Prastiwa on 03/10/22.
//

import XCTest
@testable import SwiftDataStructure


final class FactorialNumberTest: XCTestCase {
  
  var sut: FactorialNumberSolution!
  
  func test_getFactorialNumberOf5Recursively() {
    sut = FactorialNumberRecursive()
    XCTAssertEqual(sut.getFactorial(of: 5), 120)
  }
  
  func test_getFactorialNumberOf5UsingFoorLoop() {
    sut = FactorialNumberForLoop()
    XCTAssertEqual(sut.getFactorial(of: 5), 120)
  }
  
  func test_getFactorialNumberOf5UsingWhileLoop() {
    sut = FactorialNumberWhileLoop()
    XCTAssertEqual(sut.getFactorial(of: 5), 120)
  }
}
