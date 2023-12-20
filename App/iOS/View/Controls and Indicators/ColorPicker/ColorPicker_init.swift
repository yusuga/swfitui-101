//
//  ColorPicker_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/colorpicker
private struct ColorPicker_init: View {

  @State private var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)

  var body: some View {
    ColorPicker("Alignment Guides", selection: $bgColor)
      .border(.red)

    ColorPicker("", selection: $bgColor)
      .fixedSize()
      .border(.red)
  }
}

#Preview {
  List {
    ColorPicker_init()
  }
}

#Preview {
  ColorPicker_init()
}
