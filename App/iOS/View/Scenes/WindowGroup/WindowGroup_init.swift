//
//  WindowGroup_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/windowgroup
private struct WindowGroup_init: App {

  var body: some Scene {
    WindowGroup {
      MailViewer() // Define a view hierarchy for the window.
    }
  }
}

extension WindowGroup_init {

  struct MailViewer: View {
    var body: some View {
      NavigationView {
        List {
          Text("Email 1")
          Text("Email 2")
          Text("Email 3")
        }
        .navigationTitle("Inbox")
      }
    }
  }
}
