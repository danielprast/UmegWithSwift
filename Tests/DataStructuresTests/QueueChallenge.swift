//
//  QueueChallenge.swift
//  
//
//  Created by Daniel Prastiwa on 18/01/22.
//

import XCTest
@testable import DataStructures

class QueueChallenge: XCTestCase {
    func test_playerOrder() {
        var queue = QueueStack<String>()
        queue.enqueue("Kirby")
        queue.enqueue("Samus")
        queue.enqueue("Pikachu")
        queue.enqueue("Toon Ozma")
        
        XCTAssertEqual(queue.peek, "Kirby")
        queue.nextPlayer()
        queue.nextPlayer()
        XCTAssertEqual(queue.peek, "Pikachu")
        queue.nextPlayer()
        XCTAssertEqual(queue.peek, "Toon Ozma")
    }
}
