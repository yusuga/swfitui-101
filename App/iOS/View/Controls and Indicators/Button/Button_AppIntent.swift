//
//  Button_AppIntent.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI
import AppIntents

/// - SeeAlso: Button_ButtonBorderShape
private struct Button_AppIntent: View {

  var body: some View {
    Button(intent: OpenCurrentlyReading(), label: {
      Text("init(intent:label:)")
    })

    Button("init(_:intent:)", intent: OpenCurrentlyReading())

    Button(role: .destructive, intent: OpenCurrentlyReading(), label: {
      Text("init(role:intent:label:)")
    })
  }
}

#Preview {
  VStack(spacing: 16) {
    Button_AppIntent()
  }
}

/// - SeeAlso: https://developer.apple.com/videos/play/wwdc2022/10032
private struct OpenCurrentlyReading: AppIntent {

  static var title: LocalizedStringResource = "Open Currently Reading"

  @MainActor
  func perform() async throws -> some IntentResult {
    // Navigator.shared.openShelf(.currentlyReading)
    return .result()
  }

  static var openAppWhenRun: Bool = true
}
