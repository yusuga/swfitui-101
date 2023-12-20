//
//  List_identifiable_data.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/list#listing-identifiable-data
private struct List_init_identifiable_data_selection: View {

  let values = (0...100).map { Value(id: $0) }
  @State var selection: Value?

  var body: some View {
    List(values, selection: $selection) { value in
      Text(value.id.description)
    }

    Text("selection \(selection.flatMap { $0.id.description } ?? "nil")")
  }
}

#Preview("List(_:selection:rowContent:)") {
  NavigationStack {
    List_init_identifiable_data_selection()
      .navigationTitle("List(_:selection:rowContent:)")
      .environment(\.editMode, .constant(.active))
  }
}

private struct List_init_identifiable_data_selection_set: View {

  let values = (0...100).map { Value(id: $0) }
  @State var selection = Set<Value>()

  var body: some View {
    List(values, selection: $selection) {
      Text($0.id.description)
    }

    Text("\(selection.count) selections")
  }
}

#Preview("List(_:selection:rowContent:) Set") {
  NavigationStack {
    List_init_identifiable_data_selection_set()
      .environment(\.editMode, .constant(.active))
      .navigationTitle("List(_:selection:rowContent:) Set")
  }
}

private struct Value: Identifiable, Hashable {

  let id: Int
}
