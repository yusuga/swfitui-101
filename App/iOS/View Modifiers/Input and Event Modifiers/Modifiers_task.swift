//
//  Modifiers_task.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/10/08.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/view/task(priority:_:)
private struct Modifiers_task: View {

  let url = URL(string: "https://example.com")!
  @State var message = "Loading..."
  @State var textShown = true

  var body: some View {
    VStack {
      if textShown {
        Text(message)
          .task {
            do {
              var receivedLines = [String]()
              for try await line in url.lines {
                receivedLines.append(line)
                message = "Received \(receivedLines.count) lines"
              }
            } catch {
              message = "Failed to load"
            }
          }
      }
    }
    .toolbar {
      ToolbarItem {
        Toggle("text shown", isOn: $textShown)
          .toggleStyle(.switch)
      }
    }
  }
}

#Preview {
  NavigationStack {
    Modifiers_task()
      .tabItem {
        Label("Received", systemImage: "tray.and.arrow.down.fill")
      }
  }
}
