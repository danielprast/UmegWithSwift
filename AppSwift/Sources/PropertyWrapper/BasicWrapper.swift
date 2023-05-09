//
//  BasicWrapper.swift
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation


public class BasicWrapper {
  
  // MARK: Uppercased
  @propertyWrapper
  struct Uppercased {
    private var text: String
    var wrappedValue: String {
      get { text.uppercased() }
      set { text = newValue }
    }
    init(wrappedValue: String) {
      self.text = wrappedValue
    }
  }
  
  struct User {
    @Uppercased var username: String
  }
  
  
  // MARK: Limit the minimum and maximum bounds of a number value
  @propertyWrapper
  struct Ranged<T: Comparable> {
    
    private var minimum: T
    private var maximum: T
    private var value: T
    
    var wrappedValue: T {
      get { value }
      set {
        if newValue > maximum {
          value = maximum
        }
        else if newValue < minimum {
          value = minimum
        }
        else {
          value = newValue
        }
      }
    }
    
    init(wrappedValue: T, minimum: T, maximum: T) {
      self.minimum = minimum
      self.maximum = maximum
      self.value = wrappedValue
      self.wrappedValue = wrappedValue
    }
    
  }
  
  struct Form {
    @Ranged(minimum: 17, maximum: 65) var age: Int = 0
  }
  
  
  // MARK: Project Date property to ISO8601 formatted String
  @propertyWrapper
  struct ISO8601DateFormatted {
    static private let formatter = ISO8601DateFormatter()
    var projectedValue: String { ISO8601DateFormatted.formatter.string(from: wrappedValue) }
    var wrappedValue: Date
  }
  
  struct FormDate {
    @ISO8601DateFormatted var lastLoginAt: Date
  }
  
  
  // MARK: Wrapping NSLocalizedString API with property wrappers
  @propertyWrapper
  struct Localizable {
    private var key: String
    var wrappedValue: String {
      get { NSLocalizedString(key, comment: "") }
      set { key = newValue }
    }
    init(wrappedValue: String) {
      self.key = wrappedValue
    }
  }
  
  struct HomeViewModel {
    @Localizable var headerTitle: String
    @Localizable var headerSubtitle: String
  }
  
  
  
  // MARK: Wrapping UserDefaults API with property wrapper
  @propertyWrapper
  struct UserDefault<T> {
    var key: String
    var initialValue: T
    var wrappedValue: T {
      set { UserDefaults.standard.set(newValue, forKey: key) }
      get { UserDefaults.standard.object(forKey: key) as? T ?? initialValue }
    }
  }
  
  enum UserPreferences {
    @UserDefault(key: "isCheatModeEnabled", initialValue: false)
    static var isCheatModeEnabled: Bool
    
    @UserDefault(key: "highestScore", initialValue: 10000)
    static var highestScore: Int
    
    @UserDefault(key: "nickname", initialValue: "cloudstrife97")
    static var nickname: String
  }
  
  // MARK: - Implementation Sample
  func wrappingUserDefaultsAPIwithPropertyWrapper() {
    UserPreferences.isCheatModeEnabled = true
    UserPreferences.highestScore = 25000
    UserPreferences.nickname = "squallleonhart"
    
    print(UserPreferences.nickname)
  }
  
  
}
