//
//  List_bound_data.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI
import Observation

/// - SeeAlso: /// - SeeAlso: https://developer.apple.com/documentation/swiftui/list#listing-data
private struct List_init_bound_data_selection: View {

  @Bindable var model = Model()
  @State var selection: Int?

  var body: some View {
    List($model.values, id: \.self, selection: $selection) {
      Text($0.wrappedValue.description)
    }

    Text("selection \(selection.flatMap { $0.description } ?? "nil")")
  }
}

#Preview("List(_:id:selection:rowContent:)") {
  NavigationStack {
    List_init_bound_data_selection()
      .navigationTitle("List(_:id:selection:rowContent:)")
  }
}

private struct List_init_bound_data_selection_set: View {

  @Bindable var model = Model()
  @State var selection = Set<Int>()

  var body: some View {
    List($model.values, id: \.self, selection: $selection) {
      Text($0.wrappedValue.description)
    }

    Text("\(selection.count) selections")
  }
}

#Preview("List(_:id:selection:rowContent:) Set") {
  NavigationStack {
    List_init_bound_data_selection_set()
      .environment(\.editMode, .constant(.active))
      .navigationTitle("List(_:id:selection:rowContent:) Set")
  }
}

@Observable
private class Model {

  var values = (0...100).map { $0 }
}
