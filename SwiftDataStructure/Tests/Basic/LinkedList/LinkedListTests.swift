//
//  LinkedListTests.swift
//  Created by Daniel Prastiwa on 17/04/23.
//

import Foundation
import XCTest
@testable import SwiftDataStructure


public class LinkedListTests: XCTestCase {
  
  var sut = LinkedList<Int>()
  
  fileprivate func setupLinkedList() -> LinkedList<Int>  {
    sut = LinkedList<Int>()
    return sut
  }
  
  public override func setUp() {
    sut = setupLinkedList()
  }
  
  func testExampleOfPush() throws {
    sut.push(3)
    sut.push(2)
    sut.push(1)
    print("---Example of push---")
    print(sut)
    XCTAssertEqual(sut.description, "1 -> 2 -> 3  ")
  }
  
  func testExampleOfAppend() throws {
    sut.append(1)
    sut.append(2)
    sut.append(3)
    print("---Example of append---")
    print(sut)
    XCTAssertEqual(sut.description, "1 -> 2 -> 3  ")
    let lastNode = sut.node(at: 2)
    XCTAssertNil(lastNode?.next)
  }
  
  func testGetNodeWithInputFiveWhenElementCountIsThreeReturnsNil() throws {
    sut.append(1)
    sut.append(2)
    sut.append(3)
    
    let node = sut.node(at: 5)
    
    print("---Example of insert after---")
    print(node?.description as Any)
    XCTAssertNil(node)
  }
  
  func testInsertingParticularIndex() throws {
    sut.push(3)
    sut.push(2)
    sut.push(1)
    
    print("Before inserting: \(sut)")
    var middleNode = sut.node(at: 1)!
    for _ in 1...4 {
      middleNode = sut.insert(-1, after: middleNode)
    }
    print("After inserting: \(sut)")
    XCTAssertEqual(sut.description, "1 -> 2 -> -1 -> -1 -> -1 -> -1 -> 3      ")
  }
  
}
