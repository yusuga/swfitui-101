//
//  LazyVStack_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/lazyvstack
private struct LazyVStack_init: View {

  var body: some View {
    ScrollView {
      LazyVStack(alignment: .leading) {
        ForEach(1...100, id: \.self) {
          Text("Row \($0)")
        }
      }
    }
  }
}

#Preview {
  LazyVStack_init()
}
