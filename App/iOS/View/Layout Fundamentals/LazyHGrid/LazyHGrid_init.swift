//
//  LazyHGrid_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/lazyhgrid
private struct LazyHGrid_init: View {

  let rows = [GridItem(.fixed(30)), GridItem(.fixed(30))]

  var body: some View {
    ScrollView(.horizontal) {
      LazyHGrid(rows: rows) {
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
  LazyHGrid_init()
}
