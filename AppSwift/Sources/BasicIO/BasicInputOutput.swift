//
//  BasicInputOutput.swift
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation


public class BasicInputOutput {
  
  public static let shared = BasicInputOutput()
  
  public init() {}
  
  public func swiftInput() {
    if let str = readLine() {
      print(str)
    }
  }
  
  public func readingAnIntOfFloat() {
    if let input = readLine() {
      if let int = Float(input) {
        print("Entered input is \(int) of type: \(type(of: int))")
      } else {
        print("Entered input is \(input) of type: \(type(of: input))")
      }
    }
  }
  
  public func readingMultipleInputs() {
    print("Enter a word:")
    var inputArray: [String] = []
    while let input = readLine() {
      guard input != "quit" else {
        break
      }
      
      if !inputArray.contains(input) {
        inputArray.append(input)
        print("You did enter: \(input)")
      } else {
        print("Negative. \"\(input)\" already exist")
      }
      
      print()
      print("Enter a word:")
    }
  }
  
  public func readingInputSeparatedBySpaces() {
    let array = readLine()?
      .split { $0 == " " }
      .map (String.init)
    
    if let stringArray = array {
      print(stringArray)
    }
  }
  
  public func reading2DArray() {
    var arr = [[Int]]()
    for _ in 0...4 {
      var aux = [Int]()
      readLine()?.split(separator: " ").map({
        if let x = Int($0) {
          aux.append(x)
        }
        else {
          print("invalid")
        }
      })
      arr.append(aux)
    }
    print(arr)
  }
  
  public func allAboutPrintMethod() {
    print(1...5)
    
    print(1.0,2.0,3.0,4.0,5.0)
    
    print("1", "2", "3", separator: ":")
    
    for n in 1...5 {
      print(n, terminator: "|")
    }
  }
  
}
