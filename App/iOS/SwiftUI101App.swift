//
//  SwiftUI101App.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/15.
//

import SwiftUI
import Components

@main
struct SwiftUI101App: App {
  var body: some Scene {
    WindowGroup {
      NavigationStack {
//        SwiftUIView(text: "acb")
        Modifiers_sensoryFeedback()
      }
    }
  }
}
