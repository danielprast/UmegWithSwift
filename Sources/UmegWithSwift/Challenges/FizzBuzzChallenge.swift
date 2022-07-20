//
//  FizzBuzzChallenge.swift
//  Created by Daniel Prastiwa on 19/07/22.
//


import Foundation


public struct FizzBuzzChallenge {
  
  public init() {}
  
  public func solve(with input: [Int]) -> [String] {
    return inlineMap(input)
  }
  
  public func solve(withNumber number: Int) {
    let result: [String] = (1...number).map { i in
      if i % 3 == 0 && i % 5 == 0 {
        return "FizzBuzz"
      } else if i % 3 == 0 {
        return "Fizz"
      } else if i % 5 == 0 {
        return "Buzz"
      } else {
        return "\(i)"
      }
    }
    shout(key: "result", value: result)
  }
  
  private func naive(_ input: [Int]) -> [String] {
    var result = [String]()
    
    for i in input {
      if i % 3 == 0 && i % 5 == 0 {
        result.append("FizzBuzz")
      } else if i % 3 == 0 {
        result.append("Fizz")
      } else if i % 5 == 0 {
        result.append("Buzz")
      } else {
        result.append("\(i)")
      }
    }
    
    return result
  }
  
  private func inlineMap(_ input: [Int]) -> [String] {
    return input.map { i in
      if i % 3 == 0 && i % 5 == 0 {
        return "FizzBuzz"
      } else if i % 3 == 0 {
        return "Fizz"
      } else if i % 5 == 0 {
        return "Buzz"
      } else {
        return "\(i)"
      }
    }
  }
  
  func shout(key: String, value: Any) {
    print("😎 DevLog :: \(key) ⇢ \(value)")
  }
  
}
