//
//  Toggle_ToggleStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/19.
//

import SwiftUI

/// - SeeAlso:
///     - https://developer.apple.com/documentation/swiftui/view/togglestyle(_:)
///     - https://developer.apple.com/documentation/swiftui/togglestyle
private struct Toggle_ToggleStyle: View {

  @State private var vibrateOnRing = false
  @State private var isFlagged = false
  @State private var isMuted = false
  @State private var isShuffling = false
  @State private var isRepeating = false
  @State private var isEnhanced = false
  @State private var doesClose = false  

  var body: some View {
    Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
      .toggleStyle(.switch)

    Toggle("iconOnly", isOn: $vibrateOnRing)
      .toggleStyle(.switch)
      .labelsHidden()

    HStack {
      Toggle(isOn: $isFlagged) {
        Label("Flag", systemImage: "flag.fill")
      }
      Toggle(isOn: $isMuted) {
        Label("Mute", systemImage: isMuted ? "speaker.slash.fill" : "speaker.fill")
      }
    }
    .toggleStyle(.button)

    HStack {
      Toggle(
        "iconOnly",
        systemImage: "dot.radiowaves.left.and.right",
        isOn: $vibrateOnRing
      )
      .toggleStyle(.button)
      .labelStyle(.iconOnly)
    }

    HStack {
      Toggle(isOn: $isShuffling) {
        Label("Shuffle", systemImage: "shuffle")
      }
      Toggle(isOn: $isRepeating) {
        Label("Repeat", systemImage: "repeat")
      }

      Divider()

      Toggle("Enhance Sound", isOn: $isEnhanced)
        .toggleStyle(.automatic) // Revert to the default style.
    }
    .toggleStyle(.button) // Use button style for toggles in the stack.
    .labelStyle(.iconOnly) // Omit the title from any labels.

#if os(macOS)
    Toggle("Close windows when quitting an app", isOn: $doesClose)
        .toggleStyle(.checkbox)
#endif
  }
}

#Preview {
  List {
    Toggle_ToggleStyle()
  }
}

#Preview {
  Toggle_ToggleStyle()
    .padding()
}
