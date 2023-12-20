//
//  AnyShape_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/anyshape
private struct AnyShape_init: View {

  @State var isCircular: Bool = false

  var body: some View {
    Rectangle()
      .frame(minWidth: 200, minHeight: 200)
      .clipShape(
        isCircular ? AnyShape(Circle()) : AnyShape(Capsule())
      )

    Toggle(isOn: $isCircular) {
      Text("isCircular")
    }
  }
}

#Preview {
  List {
    AnyShape_init()
  }
}
