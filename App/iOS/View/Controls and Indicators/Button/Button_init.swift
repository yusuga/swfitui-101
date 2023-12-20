//
//  Button_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/button
struct Button_init: View {

  var body: some View {
    Button(action: emptyAction, label: {
      Text("Button(action:label:)")
    })

    Button("Button(_:action:)", action: emptyAction)

    Button(action: emptyAction, label: {
      Text("Button(action:label:)")
        .font(.title)
    })
  }
}

#Preview {
  VStack(spacing: 16) {
    Button_init()
  }
}
