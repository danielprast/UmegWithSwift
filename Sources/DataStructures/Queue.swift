//
//  Queue.swift
//  
//
//  Created by Daniel Prastiwa on 07/01/22.
//

import Foundation

protocol Queue {
    associatedtype Element
    
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

struct QueueArray<T>: Queue {
    private var array: [T] = []
    var isEmpty: Bool {
        return array.isEmpty
    }
    var peek: T? {
        return array.first
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
}

struct QueueStack<T>: Queue {
    private var dequeueStack: [T] = []
    private var enqueueStack: [T] = []
    
    var isEmpty: Bool {
        return dequeueStack.isEmpty && enqueueStack.isEmpty
    }
    
    var count: Int {
        return dequeueStack.count + enqueueStack.count
    }
    
    var peek: T? {
        return !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
    }
    
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
}

protocol BoardGameManager {
    associatedtype Player
    mutating func nextPlayer() -> Player?
}

// MARK: - Challenge: Track next player
// MARK: My Solution
//extension QueueStack: BoardGameManager {
//    typealias Player = T
//
//    mutating func nextPlayer() -> Player? {
//        if isEmpty {
//            return nil
//        }
//
//        guard let veryPeek = self.peek else { return nil }
//        dequeue()
//
//        guard let nextPlayer = self.peek else { return nil }
//        enqueue(veryPeek)
//        self.enqueueStack.append(contentsOf: dequeueStack.reversed())
//        dequeueStack.removeAll()
//
//        return nextPlayer
//    }
//}

// MARK: Correct Solution
extension QueueStack: BoardGameManager {
    typealias Player = T
    
    @discardableResult
    mutating func nextPlayer() -> T? {
        guard let player = dequeue() else {
            return nil
        }
        enqueue(player)
        return player
    }
}
