//
//  VStack_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/vstack
private struct VStack_init: View {
  
  var body: some View {
    VStack(
      alignment: .leading,
      spacing: 10
    ) {
      ForEach(
        1...10,
        id: \.self
      ) {
        Text("Item \($0)")
      }
    }    }
}

#Preview {
  VStack_init()
}
