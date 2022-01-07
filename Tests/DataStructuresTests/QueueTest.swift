//
//  QueueTest.swift
//  
//
//  Created by Daniel Prastiwa on 07/01/22.
//

import XCTest
@testable import DataStructures

class QueueTest: XCTestCase {
    var queueArray = QueueArray<String>()

    override func setUp() {
        queueArray.enqueue("Xamben")
        queueArray.enqueue("Taman Safari")
        queueArray.enqueue("Jatim Park")
        queueArray.enqueue("Gogoniti")
    }
    
    func test_enqueueArray() {
        XCTAssertEqual(queueArray.peek, "Xamben")
    }
    
    func test_enqueueStack() {
        
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
        
    }

}
