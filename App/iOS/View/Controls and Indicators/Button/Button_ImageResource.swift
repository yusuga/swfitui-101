//
//  Button_ImageResource.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/button#creating-a-button-with-an-image-resource
struct Button_ImageResource: View {

  var body: some View {
    Button(
      "init(_:image:role:action:)",
      image: .newspaper,
      role: .none,
      action: emptyAction
    )

    Button(
      "init(_:systemImage:role:action:)",
      systemImage: "newspaper",
      role: .none,
      action: emptyAction
    )
  }
}

#Preview {
  VStack(spacing: 16) {
    Button_ImageResource()
  }
}
