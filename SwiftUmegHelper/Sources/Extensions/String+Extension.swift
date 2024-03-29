//
//  String+Extension.swift
//  Created by Daniel Prastiwa on 19/07/22.
//

import Foundation

extension String {
  
  public subscript(offset: Int) -> Character {
    self[index(startIndex, offsetBy: offset)]
  }
  
}
