//
//  SearchingAlgo.swift
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation
import SwiftUmegHelper


public struct SearchingAlgo {
  
  public let arrayAbc = ["a", "b", "e", "h", "j", "k", "m", "n", "o", "q", "r"]
  public let arrayNumber = [10,5,2,8,3,2,1,9,11,12,13,15,17,19,22,100,66,7,56,34,89,67,23]
  
  public func linearSearch<T: Comparable> (array: [T], forKey key: T) -> Int? {
    var iterations = 0
    
    for (i, element) in array.enumerated() {
      if element == key {
        shout("Linear iterations", iterations)
        return i
      }
      iterations += 1
    }
    
    return nil
  }
  
  public func binarySearch<T: Comparable> (array: [T], forKey key: T) -> Int? {
    var range = 0 ..< array.count
    var iterations = 0
    
    while range.startIndex < range.endIndex {
      let midpoint = range.startIndex + (range.endIndex - range.startIndex) / 2
      
      if array[midpoint] == key {
        shout("Binary iterations", iterations)
        return midpoint
      } else if array[midpoint] < key {
        range = midpoint + 1 ..< range.endIndex
      } else {
        range = 0 ..< midpoint
      }
      
      iterations += 1
    }
    
    return nil
  }
  
}
