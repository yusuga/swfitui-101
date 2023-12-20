//
//  Text_Scale.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text/scale
struct Text_Scale: View {

  var body: some View {
    Text("default")
      .textScale(.default, isEnabled: true)

    Text("secondary")
      .textScale(.secondary, isEnabled: true)
  }
}

#Preview {
  List {
    Text_Scale()
  }
}
