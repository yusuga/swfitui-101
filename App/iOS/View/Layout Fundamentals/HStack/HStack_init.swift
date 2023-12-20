//
//  HStack_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/hstack
private struct HStack_init: View {

  var body: some View {
    HStack(
      alignment: .top,
      spacing: 10
    ) {
      ForEach(
        1...5,
        id: \.self
      ) {
        Text("Item \($0)")
      }
    }
  }
}

#Preview {
  HStack_init()
}
