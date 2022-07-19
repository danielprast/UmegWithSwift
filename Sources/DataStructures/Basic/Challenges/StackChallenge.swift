//
//  StackChallenge.swift
//  
//
//  Created by Daniel Prastiwa on 07/01/22.
//

import Foundation

final class StackChallenge {
  
  /// Challenge:
  /// Write a function to check for balanced parentheses in a given strings.
  
  static func correctSolution(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for character in string {
      if character == "(" {
        stack.push(character)
      } else if character == ")" {
        if stack.isEmpty {
          return false
        } else {
          stack.pop()
        }
      }
    }
    
    return stack.isEmpty
  }
  
  static func checkParentheses2(_ string: String) -> Bool {
    if string.isEmpty { return false }
    
    var stack = Stack<Character>()
    
    for chr in string {
      if chr == "(" {
        stack.push(chr)
      }
      
      if chr == ")" {
        if stack.isEmpty {
          return false
        }
        stack.pop()
      }
    }
    
    return stack.isEmpty
  }
  
  //MARK: - Wrong Solution
  
  static func checkParentheses1(_ string: String) -> Bool {
    if string.isEmpty { return false }
    
    let leftParen = "("
    let rightParen = ")"
    
    var leftParenCount = 0
    var rightParenCount = 0
    
    var stack: Stack = Stack(string.map { String($0) })
    
    while(!stack.isEmpty) {
      let poppy = stack.pop()
      
      if poppy == leftParen {
        leftParenCount += 1
      } else if poppy == rightParen {
        rightParenCount += 1
      }
    }
    
    print("Left paren count: \(leftParenCount)")
    print("Right paren count: \(rightParenCount)")
    
    return leftParenCount == rightParenCount
  }
  
  static func checkParenthesesWithoutStack(_ string: String) -> Bool {
    if string.isEmpty { return false }
    
    let leftParen = "("
    let rightParen = ")"
    
    var leftParenCount = 0
    var rightParenCount = 0
    
    string
      .map { String($0) }
      .forEach {
        if $0 == leftParen {
          leftParenCount += 1
        }
        
        if $0 == rightParen {
          rightParenCount += 1
        }
      }
    
    return leftParenCount == rightParenCount
  }
  
  //MARK: - Other case, example input = "{}[]()[]{}"
  static func checkDynamicParentheses(_ string: String) -> Bool {
    if string.isEmpty { return false }
    
    let chars: [Character] = string.map { $0 }
    
    var stack = Stack<Character>()
    stack.push(chars[0])
    
    for (n, c) in chars.enumerated() where n != 0 {
      if c == stack.peek() {
        stack.pop()
      } else {
        stack.push(c)
      }
    }
    
    return stack.isEmpty
  }
  
  // MARK: -  Reverse An Array
  /// Create a function that uses a stack to print the contents of an array in reversed order.
  static func reverseAnArray(fromString string: String) -> String {
    var resultStack: Stack<String> = Stack([String]())
    for (i,v) in string.enumerated().reversed() {
      print("index -> \(i)")
      resultStack.push("\(v)")
    }
    return resultStack.storage.joined(separator: "")
  }
}





