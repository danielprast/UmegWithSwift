//
//  File.swift
//  
//
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation


extension Date {
  
  public var currentTime: String {
    get {
      let formatter = DateFormatter()
      formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
      return formatter.string(from: self)
    }
  }
  
  public func convertToTime(dateStr: String, withFormat format: String) -> TimeInterval {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    let date = dateFormatter.date(from: dateStr)
    return date?.timeIntervalSince1970 ?? 0.0
  }
  
  public var millisecondsSince1970:Int64 {
    return Int64((self.timeIntervalSince1970 * 1000.0).rounded())
  }
  
  public init(milliseconds:Int64) {
    self = Date(timeIntervalSince1970: TimeInterval(milliseconds) / 1000)
  }
  
}


extension String {
  
  public func convertToTime(withFormat format: String) -> TimeInterval {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    let date = dateFormatter.date(from: self)
    return date?.timeIntervalSince1970 ?? 0.0
  }
  
}
