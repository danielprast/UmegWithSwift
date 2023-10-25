//
//  ReverseEveryWord.swift
//  Created by Daniel Prastiwa on 25/10/23.
//

import Foundation


public struct ReverseEveryWord {

  public init() {}

  public func reversedString(_ word: String) -> String {
    var lastIndex = word.count - 1
    var arr = [Character?](repeating: nil, count: word.count)

    for i in 0..<word.count {
      let index = word.index(word.startIndex, offsetBy: lastIndex)
      arr[i] = word[index]
      lastIndex -= 1
    }

    return arr.map{ String(describing: $0!) }.joined()
  }

}
