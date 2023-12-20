//
//  LazyHStack_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/lazyhstack
private struct LazyHStack_init: View {

  var body: some View {
    ScrollView(.horizontal) {
      LazyHStack(alignment: .top, spacing: 10) {
        ForEach(1...100, id: \.self) {
          Text("Column \($0)")
        }
      }
    }
  }
}

#Preview {
  LazyHStack_init()
}
