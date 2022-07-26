//
//  FizzBuzzChallengeTest.swift
//  Created by Daniel Prastiwa on 19/07/22.
//

import XCTest
@testable import SwiftUmegChallenge

class FizzBuzzChallengeTest: XCTestCase {
  
  let fizzBuzz = FizzBuzzChallenge()

  func testSolveFizzBuzz() {
    let result: [String] = ["1","2","Fizz","4","Buzz","14","FizzBuzz"]
    let input = [1, 2, 3, 4, 5, 14, 15]
    XCTAssertEqual(fizzBuzz.solve(with: input), result)
  }
  
  func testSolveFizzBuzz1() {
    let result: [String] = ["1","2","Fizz","4","Buzz","14","FizzBuzz", "Fizz", "Buzz"]
    let input = [1, 2, 3, 4, 5, 14, 15, 27, 25]
    XCTAssertEqual(fizzBuzz.solve(with: input), result)
  }
  
  func testSolveWithNumber() {
    fizzBuzz.solve(withNumber: 113)
  }

}
