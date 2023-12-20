//
//  Toggle_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/toggle/
private struct Toggle_init: View {

  @State private var vibrateOnRing = false

  var body: some View {
    Toggle(isOn: $vibrateOnRing, label: {
      Text("Vibrate on Ring")
    })

    Toggle(
      "Vibrate on Ring",
      systemImage: "dot.radiowaves.left.and.right",
      isOn: $vibrateOnRing
    )

    Toggle("Label", isOn: $vibrateOnRing)
      .labelsHidden()

    VStack(spacing: 4) {
      Toggle(
        "Vibrate on Ring",
        systemImage: "dot.radiowaves.left.and.right",
        isOn: $vibrateOnRing
      )
      .font(.title)
      .labelStyle(.iconOnly)
      .toggleStyle(.button)

      Text("Vibrate")
        .font(.callout)
    }
  }
}

#Preview {
  List {
    Toggle_init()
  }
}

#Preview {
  Toggle_init()
    .padding()
}
