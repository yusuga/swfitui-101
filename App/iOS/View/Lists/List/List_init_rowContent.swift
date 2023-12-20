//
//  List_init_rowContent.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/list#creating-a-list-from-a-range
private struct List_init_rowContent: View {

  @State var selection: Int?

  var body: some View {
    List(0..<100, selection: $selection) {
      Text($0.description)
    }

    Text("selection \(selection.flatMap { $0.description } ?? "nil")")
  }
}

#Preview("List(_:selection:rowContent:)") {
  NavigationStack {
    List_init_rowContent()
      .navigationTitle("List(_:selection:rowContent:)")
  }
}

private struct List_rowContent_set: View {

  @State var selection = Set<Int>()

  var body: some View {
    List(0..<100, selection: $selection) {
      Text($0.description)
    }

    Text("\(selection.count) selections")
  }
}

#Preview("List(_:selection:rowContent:) Set") {
  NavigationStack {
    List_rowContent_set()
      .environment(\.editMode, .constant(.active))
      .navigationTitle("List(_:selection:rowContent:) Set")
  }
}
