//
//  StackChallengeTest.swift
//  
//
//  Created by Daniel Prastiwa on 07/01/22.
//

import XCTest
@testable import SwiftUmegChallenge

class StackChallengeTest: XCTestCase {
  
  func test_checkParens() {
    //XCTAssertTrue(StackChallenge.checkParentheses1("()"))
    XCTAssertTrue(StackChallenge.checkParentheses2("()"))
    //XCTAssertTrue(StackChallenge.checkParenthesesWithoutStack("()"))
  }
  
  func test_checkParens1() {
    //XCTAssertTrue(StackChallenge.checkParentheses1("hello(world)()"))
    XCTAssertTrue(StackChallenge.checkParentheses2("hello(world)()"))
    //XCTAssertTrue(StackChallenge.checkParenthesesWithoutStack("hello(world)()"))
  }
  
  func test_checkParens2() {
    //XCTAssertFalse(StackChallenge.checkParentheses1("(hello world"))
    XCTAssertFalse(StackChallenge.checkParentheses2("(hello world"))
    //XCTAssertFalse(StackChallenge.checkParenthesesWithoutStack("(hello world"))
  }
  
  func test_checkParens3() {
    let meow = "((())(meow)))()))"
    //let result = StackChallenge.checkParentheses1(meow)
    let result = StackChallenge.checkParentheses2(meow)
    //let result = StackChallenge.checkParenthesesWithoutStack("((())(meow)))()))")
    //let result = StackChallenge.correctSolution(meow)
    XCTAssertFalse(result)
  }
  
  func test_checkParens4() {
    //let result = StackChallenge.checkParentheses1("")
    let result = StackChallenge.checkParentheses2("")
    //let result = StackChallenge.checkParenthesesWithoutStack("")
    XCTAssertFalse(result)
  }
  
  func test_ngene() {
    let input = "{}[]()[]{}"
    let result = StackChallenge.checkParentheses1(input)
    XCTAssertTrue(result)
  }
  
  func test_reverseAnArrayFromString() {
    let input = "rokok"
    let result = StackChallenge.reverseAnArray(fromString: input)
    XCTAssertEqual(result, "kokor")
  }
  
}

class StackChallengeTest2: XCTestCase {
  
  //    func test_challenge1() {
  //        let input = "{}[]()[]{}"
  //        let result = StackChallenge.checkDynamicParentheses(input)
  //        XCTAssertTrue(result)
  //    }
}
