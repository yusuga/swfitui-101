//
//  SwiftUI+App.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

extension Visibility: CustomStringConvertible {

  public var description: String {
    switch self {
    case .automatic:
      "automatic"
    case .visible:
      "visible"
    case .hidden:
      "hidden"
    }
  }
}
