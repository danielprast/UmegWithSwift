//
//  Array+Extensions.swift
//  Created by Daniel Prastiwa on 03/10/23.
//

import Foundation


public extension Array {

  subscript(indexChecked index: Int) -> Element? {
    return (index < count) ? self[index] : nil
  }

}
