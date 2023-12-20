//
//  Util.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import Foundation

let emptyAction: () -> Void = {}

public func fileName(_ file: String = #file) -> String {
  file.lastPathComponent.deletingAllPathExtension
}

extension String {

  var lastPathComponent: String {
    (self as NSString).lastPathComponent
  }

  var deletingPathExtension: String {
    (self as NSString).deletingPathExtension
  }

  var deletingAllPathExtension: String {
    var file = self
    while file.contains(".") {
      file = file.deletingPathExtension
    }
    return file
  }
}

enum MyError: LocalizedError {

  case failed

  var errorDescription: String? { #function }
  var failureReason: String? { #function }
  var recoverySuggestion: String? { #function }
  var helpAnchor: String? { #function }
}

struct LocalizedErrorModel {

  let underlyingError: LocalizedError

  init?(error: Error?) {
    guard let localizedError = error as? LocalizedError else { return nil }
    underlyingError = localizedError
  }
}

extension LocalizedErrorModel: LocalizedError {

  var errorDescription: String? {
    underlyingError.errorDescription
  }

  var failureReason: String? {
    underlyingError.failureReason
  }

  var recoverySuggestion: String? {
    underlyingError.recoverySuggestion
  }

  var helpAnchor: String? {
    underlyingError.helpAnchor
  }
}
