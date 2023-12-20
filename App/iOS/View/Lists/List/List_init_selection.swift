//
//  List_init_selection.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/list#creating-a-list-with-arbitrary-content
private struct List_selection: View {

  @State var selection: Int?

  var body: some View {
    List(selection: $selection) {
      ForEach(0...100, id: \.self) {
        Text($0.description)
      }
    }

    Text("selection \(selection.flatMap { $0.description } ?? "nil")")
  }
}

#Preview("List(selection:)") {
  NavigationStack {
    List_selection()
      .navigationTitle("List(selection:)")
  }
}

private struct List_selection_set: View {

  @State var selection = Set<Int>()

  var body: some View {
    List(selection: $selection) {
      ForEach(0...100, id: \.self) {
        Text($0.description)
      }
    }

    Text("\(selection.count) selections")
  }
}

#Preview("List(selection:) Set") {
  NavigationStack {
    List_selection_set()
      .environment(\.editMode, .constant(.active))
      .navigationTitle("List(selection:) Set")
  }
}
