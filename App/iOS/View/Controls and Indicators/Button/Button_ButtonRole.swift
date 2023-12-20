//
//  Button_ButtonRole.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/buttonrole
struct Button_ButtonRole: View {

  var body: some View {
    Button(role: .none, action: emptyAction, label: {
      Text("none (nil)")
    })

    Button(role: .destructive, action: emptyAction, label: {
      Text("destructive")
    })

    Button(role: .cancel, action: emptyAction, label: {
      Text("cancel")
    })

    Button("destructive", systemImage: "trash", role: .destructive, action: emptyAction)

    Button("cancel", systemImage: "trash", role: .cancel, action: emptyAction)
  }
}

#Preview {
  VStack(spacing: 16) {
    Button_ButtonRole()
  }
}
