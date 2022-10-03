//
//  PrimeNumber.swift
//  Created by Daniel Prastiwa on 03/10/22.
//

import Foundation


protocol PrimeNumber {
  
  func makeSumOfPrimeNumbers(ofTotalNumber totalNumber: Int) -> Int
}

class PrimeNumberV1: PrimeNumber {
  
  func makeSumOfPrimeNumbers(ofTotalNumber totalNumber: Int) -> Int {
    var primeNumbers: [Int] = []
    
    for i in 1...totalNumber {
      var primeCount = 0
      
      for j in 1...i {
        print("num: \(i) -> \(j)")
        if i % j == 0 {
          primeCount += 1
        }
      }
      
      if primeCount == 2 {
        print("\(i) prime number")
        primeNumbers.append(i)
      }
    }
    
    if primeNumbers.isEmpty {
      return 0
    }
    
    print("prime numbers: \(primeNumbers)")
    
    return primeNumbers.reduce(0) { partialResult, num in
      partialResult + num
    }
  }
}
