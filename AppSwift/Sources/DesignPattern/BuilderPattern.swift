//
//  BuilderPattern.swift
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation


public enum BuilderPattern {}


extension BuilderPattern {
  
  public struct SignUpStepOne {
    public var id: String = ""
    public var email: String = ""
    public var name: String = ""
    
    public init() {}
  }
  
  public class SignUpStepOneBuilder {
    
    public init() {}
    
    private var model = SignUpStepOne()
    
    @discardableResult
    public func withId(_ id: String) -> Self {
      model.id = id
      return self
    }
    
    public func build() -> SignUpStepOne {
      return model
    }
  }
  
  
}
