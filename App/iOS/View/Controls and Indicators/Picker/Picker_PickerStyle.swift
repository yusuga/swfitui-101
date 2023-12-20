//
//  Picker_PickerStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/picker#choosing-from-a-set-of-options
struct Picker_PickerStyle: View {

  @State private var selectedFlavor: Flavor = .chocolate
  @State private var selection: Reaction? = .none

  var body: some View {
    Picker("automatic", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }
    .pickerStyle(.automatic)
    
    Picker("inline", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }
    .pickerStyle(.inline)

    Picker("menu", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }
    .pickerStyle(.menu)

    Picker("navigationLink", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }
    .pickerStyle(.navigationLink)

    // Note: When used outside of menus, this style is rendered as a segmented picker. If that is the intended usage, consider segmented instead.
    Menu("palette") {
      Picker("palette", selection: $selectedFlavor) {
        ForEach(Flavor.allCases) { _ in
          Image(systemName: "newspaper")
//          Text($0.rawValue.capitalized)
        }
      }
      .pickerStyle(.palette)
      .paletteSelectionEffect(.symbolVariant(.slash))
    }

#if os(macOS)
    Picker("radioGroup", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }
    .pickerStyle(.radioGroup)
#endif

    Picker("segmented", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }
    .pickerStyle(.segmented)

    Picker("wheel", selection: $selectedFlavor) {
      ForEach(Flavor.allCases) {
        Text($0.rawValue.capitalized)
      }
    }
    .pickerStyle(.wheel)
  }
}

#Preview {
  NavigationStack {
    List {
      Picker_PickerStyle()
    }
  }
}

#Preview {
  NavigationStack {
    VStack(spacing: 16) {
      Picker_PickerStyle()
        .padding()
    }
  }
}

extension Picker_PickerStyle {

  enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry

    var id: Self { self }
  }

  enum Reaction: Identifiable, CaseIterable {
    case thumbsup
    case thumbsdown
    case heart
    case questionMark

    var id: Self { self }
  }
}
