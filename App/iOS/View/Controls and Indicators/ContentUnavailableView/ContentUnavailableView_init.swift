//
//  ContentUnavailableView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/contentunavailableview
private struct ContentView: View {

  @State var count = 0

  var body: some View {
    List {
      ForEach(0..<count, id: \.self) {
        Text($0.description)
      }
    }
    .overlay {
      if count == 0 {
        ContentUnavailableView {
          Label("No Value", systemImage: "tray.fill")
        } description: {
          Text("New mails you receive will appear here.")
        }
      }
    }
    .toolbar {
      ToolbarItem(placement: .bottomBar) {
        HStack {
          Spacer()
          Stepper("count", value: $count, in: 0...10)
            .fixedSize(horizontal: true, vertical: false)
          Spacer()
        }
      }
    }
    .navigationTitle("Values")
  }
}

#Preview {
  NavigationStack {
    ContentView()
  }
}
