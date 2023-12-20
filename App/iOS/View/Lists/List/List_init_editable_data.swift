//
//  List_editable_data.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/list#listing-editable-data
private struct List_init_editable_data_selection: View {

  @Bindable var model = Model()
  @State var selection: Int?

  var body: some View {
    List($model.values, editActions: .all, selection: $selection) {
      Text($0.wrappedValue.id.description)
    }
    .toolbar {
      EditButton()
    }

    Text("selection \(selection.flatMap { $0.description } ?? "nil")")
  }
}

#Preview("List(_:editActions:selection:rowContent:)") {
  NavigationStack {
    List_init_editable_data_selection()
      .navigationTitle("List(_:id:selection:rowContent:)")
  }
}

private struct List_init_editable_data_selection_set: View {

  @Bindable var model = Model()
  @State var selection = Set<Int>()

  var body: some View {
    List($model.values, editActions: .all, selection: $selection) {
      Text($0.wrappedValue.id.description)
    }
    .toolbar {
      EditButton()
    }

    Text("\(selection.count) selections")
  }
}

#Preview("List(_:editActions:selection:rowContent:) Set") {
  NavigationStack {
    List_init_editable_data_selection_set()
      .navigationTitle("List(_:id:selection:rowContent:) Set")
  }
}

@Observable
private class Model {

  var values = (0...100).map { Value(id: $0) }
}

private struct Value: Identifiable, Hashable {

  let id: Int
}

