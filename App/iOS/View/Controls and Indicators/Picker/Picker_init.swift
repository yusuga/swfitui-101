//
//  Picker_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/picker
struct Picker_init: View {

  @State private var selectedFlavor: Flavor = .chocolate

  @State private var selectedObjectBorders = [
    Border(color: .black, thickness: .thin),
    Border(color: .red, thickness: .thick),
  ]

  var body: some View {
    Picker(selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    } label: {
      Text("Flavor")
    }

    Picker("Flavor", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }

    Picker(
      "Border Thickness",
      sources: $selectedObjectBorders,
      selection: \.thickness
    ) {
      ForEach(Thickness.allCases) {
        Text($0.rawValue)
      }
    }
    .toolbar {
      ToolbarItem(placement: .secondaryAction) {
        Picker("menu", selection: $selectedFlavor) {
          ForEach(Flavor.allCases) {
            Text($0.rawValue.capitalized)
          }
        }
      }

      ToolbarItem(placement: .navigation) {
        Picker("menu", selection: $selectedFlavor) {
          ForEach(Flavor.allCases) {
            Text($0.rawValue.capitalized)
          }
        }
        .pickerStyle(.menu)
      }
    }
  }
}

#Preview {
  NavigationStack {
    List {
      Picker_init()
    }
  }
}

#Preview {
  NavigationStack {
    VStack {
      Picker_init()
    }
  }
}

extension Picker_init {

  enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry

    var id: Self { self }
  }

  enum Thickness: String, CaseIterable, Identifiable {
    case thin
    case regular
    case thick

    var id: String { rawValue }
  }

  struct Border {
    var color: Color
    var thickness: Thickness
  }
}
