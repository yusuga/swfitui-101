//
//  List_ListStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

private struct ContentView: View {

  @State var listStyle: ListStyleType = .automatic

  var body: some View {
    switch listStyle {
    case .automatic:
      List { Text("Hello, World!") }
        .listStyle(.automatic)
#if os(macOS)
    case .bordered:
      List { Text("Hello, World!") }
        .listStyle(.bordered)
    case .carousel:
      List { Text("Hello, World!") }
        .listStyle(.carousel)
    case .elliptical:
      List { Text("Hello, World!") }
        .listStyle(.elliptical)
#endif
    case .grouped:
      List { Text("Hello, World!") }
        .listStyle(.grouped)
    case .inset:
      List { Text("Hello, World!") }
        .listStyle(.inset)
    case .insetGrouped:
      List { Text("Hello, World!") }
        .listStyle(.insetGrouped)
    case .plain:
      List { Text("Hello, World!") }
        .listStyle(.plain)
    case .sidebar:
      List { Text("Hello, World!") }
        .listStyle(.sidebar)
    }

    Picker("ListStyle", selection: $listStyle) {
      ForEach(ListStyleType.allCases) {
        Text($0.rawValue)
      }
    }
  }
}

#Preview {
  NavigationStack {
    ContentView()
  }
}

private enum ListStyleType: String, CaseIterable, Hashable, Identifiable {

  case automatic
#if os(macOS)
  case bordered
  case carousel
  case elliptical
#endif
  case grouped
  case inset
  case insetGrouped
  case plain
  case sidebar

  var id: Self { self }
}
