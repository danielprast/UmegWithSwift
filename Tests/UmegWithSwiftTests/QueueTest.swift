//
//  QueueTest.swift
//  
//
//  Created by Daniel Prastiwa on 07/01/22.
//

import XCTest
@testable import UmegWithSwift

class QueueTest: XCTestCase {
    var queueArray = QueueArray<String>()
    var queueStack = QueueStack<String>()

    override func setUp() {
        queueArray.enqueue("Xamben")
        queueArray.enqueue("Taman Safari")
        queueArray.enqueue("Jatim Park")
        queueArray.enqueue("Gogoniti")
        
        queueStack.enqueue("Samsung")
        queueStack.enqueue("Apple")
        queueStack.enqueue("Xiaomi")
        queueStack.enqueue("Nokia")
    }
    
    func test_enqueueArray() {
        XCTAssertEqual(queueArray.peek, "Xamben")
    }
    
    func test_enqueueStack() {
        XCTAssertEqual(queueStack.peek, "Samsung")
    }
    
    func test_dequeueArray() {
        queueArray.dequeue()
        queueArray.dequeue()
        queueArray.dequeue()
        XCTAssertEqual(queueArray.peek, "Gogoniti")
        queueArray.dequeue()
        XCTAssertTrue(queueArray.isEmpty)
    }
    
    func test_dequeueStack() {
        queueStack.dequeue()
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertEqual(queueStack.peek, "Nokia")
        queueStack.dequeue()
        XCTAssertTrue(queueStack.isEmpty)
    }
    
    func test_keepTrackNextPlayerReturnApple() {
        let nextPlayer = queueStack.nextPlayer()
        XCTAssertEqual(nextPlayer, "Apple")
    }
    
    func test_nextPlayerReturnXiaomi() {
        queueStack.dequeue()
        XCTAssertEqual(queueStack.nextPlayer(), "Xiaomi")
    }
    
    func test_nextPlayerReturnNokia() {
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertEqual(queueStack.nextPlayer(), "Nokia")
    }
    
    func test_nextPlayerReturnsNil() {
        queueStack.dequeue()
        queueStack.dequeue()
        queueStack.dequeue()        
        XCTAssertNil(queueStack.nextPlayer())
    }

}


