//
//  List_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/list
private struct List_content: View {

  var body: some View {    
    List {
      Text("Text")
      Label("Label", systemImage: "newspaper")
      Button("Button", action: emptyAction)

      LabeledContent("key", value: "valuevaluevaluevaluevaluevaluevaluevaluevaluevaluevalue")
      LabeledContent("long key", value: "valuevaluevaluevaluevaluevaluevaluevalue")
      LabeledContent("key", value: "value")
    }
  }
}

#Preview("List(content:)") {
  NavigationStack {
    List_content()
      .navigationTitle("List(content:)")
  }
}

private struct List_rowContent: View {

  @State var selection: Int?

  var body: some View {
    List(selection: $selection) {
      ForEach(0...100, id: \.self) {
        Text($0.description)
          .tag($0)
      }
    }
  }
}

#Preview("List(rowContent:)") {
  NavigationStack {
    List_rowContent()
      .navigationTitle("List(rowContent:)")
  }
}
