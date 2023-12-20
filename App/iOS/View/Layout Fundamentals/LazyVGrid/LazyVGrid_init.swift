//
//  LazyVGrid_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/lazyvgrid
private struct LazyVGrid_init: View {

  let columns = [GridItem(.flexible()), GridItem(.flexible())]

  var body: some View {
    ScrollView {
      LazyVGrid(columns: columns) {
        ForEach(0x1f600...0x1f679, id: \.self) { value in
          Text(String(format: "%x", value))
          Text(emoji(value))
            .font(.largeTitle)
        }
      }
    }
  }

  private func emoji(_ value: Int) -> String {
    guard let scalar = UnicodeScalar(value) else { return "?" }
    return String(Character(scalar))
  }
}

#Preview {
  LazyVGrid_init()
}
