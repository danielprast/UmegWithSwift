//
//  PalindromeChallenge.swift
//  
//
//  Created by Daniel Prastiwa on 18/07/22.
//


import Foundation
import SwiftDataStructure
import SwiftUmegHelper


struct PalindromeChallenge {
  
  static func solve(isPalindrome string: String) -> Bool {
    return isPalindromeRecursive(string, startAt: 0)
  }
  
  static func isPalindromeRegularApproach(_ string: String) -> Bool {
    if string.first != string.last {
      return false
    }
    
    var resultStack = [String]()
    
    for (i,v) in string.enumerated().reversed() {
      print("item -> \(i), \(v)")
      resultStack.append("\(v)")
    }
    
    return string == resultStack.joined(separator: "")
  }
  
  static func isPalindromeLangsungLoop(_ string: String) -> Bool {
    for i in 0..<string.count {
      print("iteration -> \(i)")
      let firstStringIndex = i
      let lastStringIndex = string.count - i - 1

      if string[firstStringIndex] != string[lastStringIndex] {
        return false
      }
    }
    return true
  }
  
  static func isPalindromeCutHalfLoop(_ string: String) -> Bool {
    for i in 0..<string.count / 2 {
      print("iteration -> \(i)")
      let firstStringIndex = i
      let lastStringIndex = string.count - i - 1

      if string[firstStringIndex] != string[lastStringIndex] {
        return false
      }
    }
    return true
  }
  
  static func isPalindromeRecursive(
    _ string: String,
    startAt i: Int
  ) -> Bool {
    if i < string.count / 2 {
      print("iteration -> \(i)")
      
      let firstStringIndex = i
      let lastStringIndex = string.count - i - 1
      
      if string[firstStringIndex] != string[lastStringIndex] {
        return false
      }
      
      return isPalindromeRecursive(string, startAt: i + 1)
    }
    
    return true
  }
  
}
