//
//  ComplexityTest.swift
//  Created by Daniel Prastiwa on 09/05/23.
//

import Foundation
import XCTest
@testable import SwiftAlgorithm


final class ComplexityTest: XCTestCase {
  
  func test_PrintIntegerSortingSpaceComplexity() {
    let sut = IntegerSortingSpaceComplexity()
    sut.printSorted(Array((1...5)))
  }
  
}
