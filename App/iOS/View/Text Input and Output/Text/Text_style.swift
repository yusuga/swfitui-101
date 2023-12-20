//
//  Text_style.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text#styling-the-view’s-text
struct Text_style: View {

  var body: some View {
    Text("foregroundStyle(.red)")
      .foregroundStyle(.red)

    Text("bold")
      .bold()

    Text("italic")
      .italic()

    Text("strikethrough")
      .strikethrough()

    Text("strikethrough(pattern:color:)")
      .strikethrough(pattern: .dash, color: .red)

    Text("underline")
      .underline()

    Text("underline(pattern:color:)")
      .underline(pattern: .dash, color: .red)

    Text("monospaced 123")
      .monospaced()

    Text("monospacedDigit 123")
      .monospacedDigit()

    Text("kerning")
      .kerning(10)

    Text("tracking")
      .tracking(10)

    Text("baselineOffset")
      .baselineOffset(40)
  }
}

#Preview {
  List {
    Text_style()
  }
}
