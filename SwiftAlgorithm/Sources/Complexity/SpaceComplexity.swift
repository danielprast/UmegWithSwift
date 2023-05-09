//
//  SpaceComplexity.swift
//  Created by Daniel Prastiwa on 09/05/23.
//

import Foundation


public struct IntegerSortingSpaceComplexity {
  
  public init () {}
  
  public func printSorted(_ array: [Int]) {
    
    guard !array.isEmpty else { return }
    
    var currentCount = 0
    var minValue = Int.min
    
    for value in array {
      if value == minValue {
        print(value)
        currentCount += 1
      }
    }
    
    while currentCount < array.count {

      var currentValue = array.max()!

      for value in array {
        if value < currentValue && value > minValue {
          currentValue = value
          print("track current value: \(currentValue)")
        }
      }

      for value in array {
        if value == currentValue {
          print(value)
          currentCount += 1
        }
      }

      minValue = currentValue

    }
    
  }
  
}

extension IntegerSortingSpaceComplexity: IntegerSorting {}
