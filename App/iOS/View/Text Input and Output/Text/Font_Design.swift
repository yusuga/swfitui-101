//
//  Font_Design.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/font/design
struct Font_Design: View {

  var body: some View {
    Text("default")
      .fontDesign(.default)

    Text("monospaced")
      .fontDesign(.monospaced)

    Text("rounded")
      .fontDesign(.rounded)

    Text("serif")
      .fontDesign(.serif)
  }
}

#Preview {
  List {
    Font_Design()
  }
  .font(.title)
}
