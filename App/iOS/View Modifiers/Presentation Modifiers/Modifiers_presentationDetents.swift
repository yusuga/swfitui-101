//
//  Modifiers_presentationDetents.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/21.
//

import SwiftUI

/// - SeeAlso:
///     - https://developer.apple.com/documentation/swiftui/view/presentationdetents(_:)
///     - https://developer.apple.com/documentation/swiftui/view/presentationcompactadaptation(_:)
struct Modifiers_presentationDetents: View {

  @State private var isPresented = false
  @State private var type: PresentationAdaptationType = .automatic

  var body: some View {
    Button("Present") {
      isPresented = true
    }
    .sheet(isPresented: $isPresented) {
      Detail()
        .presentationDetents([.medium, .large])
        .presentationCompactAdaptation(type.value)
    }

    Picker("", selection: $type) {
      ForEach(PresentationAdaptationType.allCases, id: \.self) {
        Text($0.rawValue)
      }
    }
    .pickerStyle(.segmented)
  }
}

private enum PresentationAdaptationType: String, CaseIterable, Hashable {

  case automatic
  case none
  case popover
  case sheet
  case fullScreenCover

  var value: PresentationAdaptation {
    switch self {
    case .automatic:
        .automatic
    case .none:
        .none
    case .popover:
        .popover
    case .sheet:
        .sheet
    case .fullScreenCover:
        .fullScreenCover
    }
  }
}

private struct Detail: View {

  @Environment(\.dismiss) var dismiss

  var body: some View {
    Button("Dismiss") {
      dismiss()
    }    
  }
}

#Preview {
  Modifiers_presentationDetents()
    .padding()
}
