//
//  Queue.swift
//  Created by Daniel Prastiwa on 07/01/22.
//


import Foundation


public protocol Queue {
  associatedtype Element
  
  mutating func enqueue(_ element: Element)
  mutating func dequeue() -> Element?
  var isEmpty: Bool { get }
  var peek: Element? { get }
}

// MARK: - QueueArray

public struct QueueArray<T>: Queue {
  
  public init() {}
  
  private var array: [T] = []
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var peek: T? {
    return array.first
  }
  
  public mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  @discardableResult
  public mutating func dequeue() -> T? {
    return isEmpty ? nil : array.removeFirst()
  }
}

// MARK: - QueueStack

public struct QueueStack<T>: Queue {
  
  public init() {}
  
  private var dequeueStack: [T] = []
  private var enqueueStack: [T] = []
  
  public var isEmpty: Bool {
    return dequeueStack.isEmpty && enqueueStack.isEmpty
  }
  
  public var count: Int {
    return dequeueStack.count + enqueueStack.count
  }
  
  public var peek: T? {
    return !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
  }
  
  public mutating func enqueue(_ element: T) {
    enqueueStack.append(element)
  }
  
  @discardableResult
  public mutating func dequeue() -> T? {
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
  public mutating func nextPlayer() -> T? {
    guard let _ = dequeue() else {
      return nil
    }
    return peek
  }
}
