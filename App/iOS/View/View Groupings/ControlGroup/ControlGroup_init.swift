//
//  ControlGroup_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/controlgroup
private struct ControlGroup_init: View {

  var body: some View {
    ControlGroup {
      Button(action: emptyAction) {
        Image(systemName: "play.rectangle.fill")
      }
      Button(action: emptyAction) {
        Image(systemName: "chart.bar.fill")
      }
      Button(action: emptyAction) {
        Image(systemName: "chart.pie.fill")
      }
    } label: {
      Label("Plus", systemImage: "plus")
    }
  }
}

#Preview {
  NavigationStack {
    ControlGroup_init()
      .padding()

    List {
      ControlGroup_init()
    }
    .toolbar(id: "items") {
      ToolbarItem(id: "meida") {
        ControlGroup_init()
      }
    }
  }
}
