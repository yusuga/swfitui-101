//
//  Binding_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/19.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/binding
private struct Binding_init: View {

  var episode: Episode
  @State var isPlaying: Bool = false

  var body: some View {
    Section {
      PlayButton(isPlaying: $isPlaying)

      Text(episode.title)
        .foregroundStyle(isPlaying ? .primary : .secondary)
    }
  }
}

#Preview {
  List {
    Binding_init(
      episode: Episode(title: "Sample Episode")
    )
  }
}

private struct Episode {

  var title: String
}

private struct PlayButton: View {

  @Binding var isPlaying: Bool

  var body: some View {
    Button(isPlaying ? "Pause" : "Play") {
      isPlaying.toggle()
    }
  }
}
