//
//  UnevenRoundedRectangle_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/unevenroundedrectangle
private struct ContentView: View {

  var body: some View {
    UnevenRoundedRectangle(
      cornerRadii: .init(
        topLeading: 50,
        bottomLeading: 0,
        bottomTrailing: 0,
        topTrailing: 0
      ),
      style: .continuous
    )
    .padding()

    UnevenRoundedRectangle(
      cornerRadii: .init(
        topLeading: 0,
        bottomLeading: 50,
        bottomTrailing: 0,
        topTrailing: 0
      ),
      style: .continuous
    )
    .padding()

    UnevenRoundedRectangle(
      cornerRadii: .init(
        topLeading: 0,
        bottomLeading: 0,
        bottomTrailing: 50,
        topTrailing: 0
      ),
      style: .continuous
    )
    .padding()

    UnevenRoundedRectangle(
      cornerRadii: .init(
        topLeading: 0,
        bottomLeading: 0,
        bottomTrailing: 0,
        topTrailing: 50
      ),
      style: .continuous
    )
    .padding()

    UnevenRoundedRectangle(
      topLeadingRadius: 10, 
      bottomLeadingRadius: 20,
      bottomTrailingRadius: 30,
      topTrailingRadius: 50,
      style: .continuous
    )
    .padding()
  }
}

#Preview {
  ContentView()
}
