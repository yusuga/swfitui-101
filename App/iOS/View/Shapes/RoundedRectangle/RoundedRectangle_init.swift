//
//  RoundedRectangle_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/roundedrectangle
private struct ContentView: View {

  var body: some View {
    RoundedRectangle(cornerRadius: 50, style: .circular)
      .padding()

    RoundedRectangle(cornerRadius: 50, style: .continuous)
      .padding()

    RoundedRectangle(cornerSize: CGSize(width: 50, height: 20), style: .circular)
      .padding()

    RoundedRectangle(cornerSize: CGSize(width: 50, height: 20), style: .continuous)
      .padding()
  }
}

#Preview {
  ContentView()
}
