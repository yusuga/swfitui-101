//
//  VideoPlayer_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import AVKit

/// - SeeAlso: https://developer.apple.com/documentation/avkit/videoplayer
private struct VideoPlayer_init: View {

  @State var player = AVPlayer(
    url: Bundle.main.url(forResource: "video2", withExtension: "m4v")! // Not found
  )
  @State var isPlaying: Bool = false

  var body: some View {
    VStack {
      VideoPlayer(player: player)
        .frame(width: 320, height: 180, alignment: .center)


      Button {
        isPlaying ? player.pause() : player.play()
        isPlaying.toggle()
        player.seek(to: .zero)
      } label: {
        Image(systemName: isPlaying ? "stop" : "play")
          .padding()
      }
    }
  }
}

#Preview {
  VideoPlayer_init()
}
