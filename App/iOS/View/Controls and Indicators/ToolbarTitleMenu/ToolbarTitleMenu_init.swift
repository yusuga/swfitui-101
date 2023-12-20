//
//  ToolbarTitleMenu_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/toolbartitlemenu
private struct ToolbarTitleMenu_init: View {

  var body: some View {
    List(0...100, id: \.self) {
      Text($0.description)
    }
    .toolbar {
      ToolbarTitleMenu() {
        Button(action: emptyAction) {
          Label("Duplicate", systemImage: "square.on.square")
        }
        Button(action: emptyAction) {
          Label("Print", systemImage: "printer")
        }
      }
    }
    .navigationTitle("Title Menu")
    .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
  NavigationStack {
    ToolbarTitleMenu_init()
  }
}
