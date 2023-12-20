//
//  Modifiers_presentationDragIndicator.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/view/presentationdragindicator(_:)
private struct Modifiers_presentationDragIndicator: View {

  @State var isPresented = false
  @State var visibility: Visibility = .automatic

  var body: some View {
    Button("Present") {
      isPresented = true
    }
    .sheet(isPresented: $isPresented) {
      Button("dismiss") {
        isPresented = false
      }
      .presentationDragIndicator(visibility)
    }

    Picker("visibility", selection: $visibility) {
      ForEach(Visibility.allCases, id: \.self) {
        Text($0.description)
      }
    }
    .pickerStyle(.segmented)
  }
}

#Preview {
  List {
    Modifiers_presentationDragIndicator()
  }
}
