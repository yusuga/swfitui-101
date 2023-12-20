//
//  Color_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/color
struct Color_init: View {

  var body: some View {
    Image(systemName: "leaf.fill")
      .foregroundStyle(Color.green)
  }
}

#Preview {
  Color_init()
}
