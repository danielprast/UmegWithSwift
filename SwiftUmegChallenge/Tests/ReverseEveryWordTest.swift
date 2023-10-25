//
//  ReverseEveryWordTest.swift
//  Created by Daniel Prastiwa on 26/10/23.
//

import XCTest
@testable import SwiftUmegChallenge


final class ReverseEveryWordTest: XCTestCase {

  func test_reverseSingleWord_returnsCorrectOrder() {
    let originalWord = "iphone"
    let expectedWord = "enohpi"
    let sut = ReverseEveryWord()

    let result = sut.reversedString(originalWord)

    XCTAssertEqual(result, expectedWord)
  }

  func test_reverse2Words_returnsCorrectOrder() {
    let originalWord = "gula manis"
    let expectedWord = "sinam alug"
    let sut = ReverseEveryWord()

    let result = sut.reversedString(originalWord)

    XCTAssertEqual(result, expectedWord)
  }

}
