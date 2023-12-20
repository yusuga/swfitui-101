//
//  ImageRenderer_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - Seealso: https://developer.apple.com/documentation/swiftui/imagerenderer
private struct ImageRenderer_init: View {

  let playerName = "John Doe"
  let achievementDate = Date()

  var body: some View {
    let trophyAndDate = createAwardView(forUser: playerName, date: achievementDate)

    VStack {
      trophyAndDate
      Button("Save Achievement") {
        // Note: The actual implementation of ImageRenderer and uploadAchievementImage is missing.
        // For the sake of this example, I am assuming they exist elsewhere in your code.
        let renderer = ImageRenderer(content: trophyAndDate)
        if let image = renderer.cgImage {
          // uploadAchievementImage(image)
        }
      }
    }
  }

  private func createAwardView(forUser user: String, date: Date) -> some View {
    VStack {
      Image(systemName: "trophy")
        .resizable()
        .frame(width: 200, height: 200)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .shadow(color: .mint, radius: 5)
      Text(user)
        .font(.largeTitle)
      Text(date.formatted())
    }
    .multilineTextAlignment(.center)
    .frame(width: 200, height: 290)
  }
}

#Preview {
  ImageRenderer_init()
}
