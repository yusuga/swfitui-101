//
//  Text_FontWidth.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text/fontwidth(_:)
struct Text_FontWidth: View {
  var body: some View {
    Text("compressed")
      .fontWidth(.compressed)

    Text("condensed")
      .fontWidth(.condensed)

    Text("expanded")
      .fontWidth(.expanded)

    Text("standard")
      .fontWidth(.standard)
  }
}

#Preview {
  List {
    Text_FontWidth()
  }
  .font(.title)
}
