//
//  List_bound_identifiable.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/list#listing-bound,-identifiable-data
private struct List_init_bound_identifiable_selection: View {

  @Bindable var model = Model()
  @State var selection: Value?

  var body: some View {
    List($model.values, selection: $selection) { value in
      Text(value.id.description)
    }

    Text("selection \(selection.flatMap { $0.id.description } ?? "nil")")
  }
}

#Preview("List(_:selection:rowContent:)") {
  NavigationStack {
    List_init_bound_identifiable_selection()
      .navigationTitle("List(_:selection:rowContent:)")
      .environment(\.editMode, .constant(.active))
  }
}

private struct List_init_bound_identifiable_selection_set: View {

  @Bindable var model = Model()
  @State var selection = Set<Value>()

  var body: some View {
    List($model.values, selection: $selection) {
      Text($0.id.description)
    }

    Text("\(selection.count) selections")
  }
}

#Preview("List(_:selection:rowContent:) Set") {
  NavigationStack {
    List_init_bound_identifiable_selection_set()
      .environment(\.editMode, .constant(.active))
      .navigationTitle("List(_:selection:rowContent:) Set")
  }
}

@Observable
private class Model {

  var values = (0...100).map { Value(id: $0) }
}

private struct Value: Identifiable, Hashable {

  let id: Int
}

