//
//  BasicCombine.swift
//  Created by Daniel Prastiwa on 10/12/22.
//

import Foundation
import Combine
import SwiftUmegHelper


public class BasicCombine {
  
  func learnJust() {
    let just = Just<String>("Just a value")
    just.sink(receiveCompletion: { (_) in
      shout("completion", "mbuoh")
    }) { (value) in
      shout("just value", value)
    }
  }
  
  func learnSubject() {
    let subject = PassthroughSubject<String, Never>()
    let anyCancelable = subject.sink { value in
      shout("subject", value)
    }
    // sending values to the subject
    subject.send("Hello")
    // subscribe a subject to a publisher
    let publisher = Just("World!")
    let pub = Just("Puppy")
    publisher.subscribe(subject)
    pub.subscribe(subject)
    shout("publisher output", publisher.output)
    shout("pub output", pub.output)
    anyCancelable.cancel()
    
    
    let errorSubject = PassthroughSubject<String, Error>()
    errorSubject.send(completion: .failure(SubjectError.unknown))
  }
  
  // sending errors
  enum SubjectError: LocalizedError {
    case unknown
  }
  
}
