//
//  NodeTests.swift
//  Created by Daniel Prastiwa on 17/04/23.
//

import Foundation
import XCTest
@testable import SwiftDataStructure


public class NodeTests: XCTestCase {
  
  func testNextNode() throws {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
  }
  
}
