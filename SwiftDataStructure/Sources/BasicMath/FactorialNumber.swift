//
//  FactorialNumber.swift
//  Created by Daniel Prastiwa on 03/10/22.
//

import Foundation


protocol FactorialNumberSolution {
  
  func getFactorial(of n: Int) -> Int
}


struct FactorialNumberRecursive: FactorialNumberSolution {
  
  func getFactorial(of n: Int) -> Int {
    print("\(n)")
    if n == 0 {
      return 1
    }
    return n * getFactorial(of: (n-1))
  }
}


struct FactorialNumberForLoop: FactorialNumberSolution {
  
  func getFactorial(of n: Int) -> Int {
    if n == 0 {
      return 1
    }
    
    var result = 1
    
    for i in 1...n {
      result *= i
      print("\(i)")
    }
    
    return result
  }
}


struct FactorialNumberWhileLoop: FactorialNumberSolution {
  
  func getFactorial(of n: Int) -> Int {
    var output = 1
    var k = 1
    
    while k <= n {
      output *= k
      k += 1
      print("\(k)")
    }
    
    return output
  }
}
