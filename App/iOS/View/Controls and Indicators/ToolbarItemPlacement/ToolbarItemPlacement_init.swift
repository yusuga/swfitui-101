//
//  ToolbarItemPlacement_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/toolbaritemplacement
private struct ToolbarItemPlacement_init: View {

  @State var currentType: ToolbarItemPlacementType = .automatic
  @State var text = ""
  @State var isToolbarItemShown = true
  @State var isShuffling = false

  var body: some View {
    List {
      Picker("menu", selection: $currentType) {
        ForEach(ToolbarItemPlacementType.allCases) {
          Text($0.rawValue)
        }
      }
      .pickerStyle(.menu)

      TextField(text: $text, prompt: Text("Required")) {
        Text("Username")
      }

      Toggle("isToolbarItemShown", isOn: $isToolbarItemShown)
    }
    .border(.red)
    .toolbar{
      if isToolbarItemShown {
        ToolbarItem(placement: currentType.value) {
          Button("Title", action: emptyAction)
            .tint(.orange)
        }
        ToolbarItem(placement: currentType.value) {
          Button("", systemImage: "newspaper", action: emptyAction)
            .tint(.orange)
        }
        ToolbarItem(placement: currentType.value) {
          Button("Trash", systemImage: "trash", action: emptyAction)
            .tint(.orange)
        }
        ToolbarItem(placement: currentType.value) {
          Button(action: emptyAction, label: {
            VStack {
              Image(systemName: "sun.min.fill")
              Text("Title")
                .font(.caption2)
            }
            .fontWeight(.bold)
          })
          .foregroundStyle(.orange)
        }
        ToolbarItem(placement: currentType.value) {
          Toggle(isOn: $isShuffling) {
            Label("Shuffle", systemImage: "shuffle")
          }
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    ToolbarItemPlacement_init()
  }
}

private extension ToolbarItemPlacement_init {

  enum ToolbarItemPlacementType: String, CaseIterable, Identifiable {
    case automatic
    case principal
    case status
    case primaryAction
    case secondaryAction
    case confirmationAction
    case cancellationAction
    case destructiveAction
    case navigation
    case topBarLeading
    case topBarTrailing
    case bottomBar
#if os(visionOS)
    case bottomOrnament
#endif
    case keyboard
#if os(macOS)
    case accessoryBar
#endif

    var id: Self { self }

    var value: ToolbarItemPlacement {
      switch self {
      case .automatic:
          .automatic
      case .principal:
          .principal
      case .status:
          .status
      case .primaryAction:
          .primaryAction
      case .secondaryAction:
          .secondaryAction
      case .confirmationAction:
          .confirmationAction
      case .cancellationAction:
          .cancellationAction
      case .destructiveAction:
          .destructiveAction
      case .navigation:
          .navigation
      case .topBarLeading:
          .topBarLeading
      case .topBarTrailing:
          .topBarTrailing
      case .bottomBar:
          .bottomBar
#if os(visionOS)
      case .bottomOrnament:
          .bottomOrnament
#endif
      case .keyboard:
          .keyboard
#if os(macOS)
      case .accessoryBar:
          .accessoryBar(id: 1)
#endif
      }
    }
  }
}
