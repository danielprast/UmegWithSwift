//
//  PrimeNumberTest.swift
//  Created by Daniel Prastiwa on 03/10/22.
//

import XCTest
@testable import SwiftDataStructure


class PrimeNumberTest: XCTestCase {
  
  func test_makeSumOfPrimeNumbersBelowOfTotalNumberOf20() {
    let sut: PrimeNumber = PrimeNumberV1()
    XCTAssertEqual(sut.makeSumOfPrimeNumbers(ofTotalNumber: 25), 100)
  }
  
  func test_primeNumberFor29IsTrue() {
    let sut: PrimeNumberValidation = PrimeNumberV1()
    XCTAssertTrue(sut.isPrime(29))
  }
  
  func test_primeNumberFor25IsFalse() {
    let sut: PrimeNumberValidation = PrimeNumberV1()
    XCTAssertFalse(sut.isPrime(25))
  }
  
}
