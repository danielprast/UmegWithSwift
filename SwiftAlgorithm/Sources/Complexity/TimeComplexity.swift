//
//  TimeComplexity.swift
//  Created by Daniel Prastiwa on 09/05/23.
//

import Foundation


public struct IntegerSortingTimeComplexcity {
  
  public init () {}
  
  public func printSorted(_ array: [Int]) {
    let sorted = array.sorted()
    for element in array {
      print(element)
    }
  }
  
}

extension IntegerSortingTimeComplexcity: IntegerSorting {}
