//
//  RenameButton_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI
import Observation

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/renamebutton
private struct ContentView: View {

  @State private var text = ""
  @FocusState private var isFocused: Bool

  var body: some View {
    TextField(text: $text) {
      Text("Prompt")
    }
    .focused($isFocused)

    Text("Text")
      .contextMenu {
        RenameButton()
      }
      .renameAction { isFocused = true }
  }
}

#Preview {
  List {
    ContentView()
  }
  .scrollDismissesKeyboard(.immediately)
}
