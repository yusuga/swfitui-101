//
//  Button_ButtonBorderShape.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/buttonbordershape
struct Button_ButtonBorderShape: View {

  var body: some View {
    Button("automatic", action: emptyAction)
      .buttonStyle(.bordered)
      .buttonBorderShape(.automatic)
    
    Button("capsule", action: emptyAction)
      .buttonStyle(.bordered)
      .buttonBorderShape(.capsule)

    Button("circle", action: emptyAction)
      .buttonStyle(.bordered)
      .buttonBorderShape(.circle)

    Button("roundedRectangle", action: emptyAction)
      .buttonStyle(.bordered)
      .buttonBorderShape(.roundedRectangle)

    Button("roundedRectangle(radius:))", action: emptyAction)
      .buttonStyle(.bordered)
      .buttonBorderShape(.roundedRectangle(radius: 2))
  }
}

#Preview {
  VStack(spacing: 16) {
    Button_ButtonBorderShape()
  }
}
