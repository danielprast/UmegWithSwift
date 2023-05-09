//
//  JsonCoder.swift
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation


public class JsonCoder {
  
  public static let shared = JsonCoder()
  
  private init() {}
  
  let encoder = JSONEncoder()
  let decoder = JSONDecoder()
  
  public func toObject<T: Codable>(_ data: Data) -> T? {
    let decoder = JSONDecoder()
    do {
      return try decoder.decode(T.self, from: data)
    } catch let err {
      print(err.localizedDescription)
      return nil
    }
  }
  
  public func toJson<T: Codable>(_ model: T) -> String? {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    do {
      let encoded = try encoder.encode(model)
      return String(data: encoded, encoding: .utf8)
    } catch let err {
      print(err.localizedDescription)
      return nil
    }
  }
  
}
