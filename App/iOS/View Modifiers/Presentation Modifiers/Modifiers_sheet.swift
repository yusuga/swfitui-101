//
//  Modifiers_sheet.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/view/sheet(item:ondismiss:content:)
private struct Modifiers_sheet: View {

  @State var model: Model?
  @State var isDetailPresented = false
  @State var dismissDate: Date?

  var body: some View {
    Button("sheet(item:onDismiss)") {
      model = .init(id: 1)
    }
    .sheet(item: $model, onDismiss: didDismiss) { detail in
      List {
        Button("dismiss") {
          model = nil
        }
      }
    }

    Button(#"sheet(item:onDismiss) with \\.dismiss"#) {
      model = .init(id: 1)
    }
    .sheet(item: $model, onDismiss: didDismiss) { _ in
      DetailView()
    }

    Button("sheet(isPresented:onDismiss)") {
      isDetailPresented = true
    }
    .sheet(isPresented: $isDetailPresented, onDismiss: didDismiss) {
      DetailView()
    }

    Section {
      LabeledContent("model", value: model == nil ? "nil" : "exist")
      LabeledContent("isDetailPresented", value: isDetailPresented.description)
      LabeledContent("dismissDate", value: dismissDate.flatMap { $0.ISO8601Format() } ?? "nil")
    }
  }

  func didDismiss() {
    dismissDate = Date.now
  }
}

#Preview {
  List {
    Modifiers_sheet()
  }
}

extension Modifiers_sheet {

  struct Model: Identifiable {
    var id: Int
  }

  struct DetailView: View {
    @Environment(\.isPresented) var isPresented
    @Environment(\.dismiss) var dismiss

    var body: some View {
      List {
        LabeledContent("isPresented", value: isPresented.description)
        Button("dismiss") {
          dismiss()
        }
      }
    }
  }
}
