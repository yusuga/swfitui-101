//
//  Modifiers_alert.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/19.
//

import SwiftUI
import Observation

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/modal-presentations#presenting-an-alert
private struct Modifiers_alert: View {

  @State var didFail = false
  @State var errorModel = ErrorModel()
  @State var localizedErrorModel: LocalizedErrorModel?

  var body: some View {
    Section {
      LoginForm(didFail: $didFail)
        .alert(
          "Login failed",
          isPresented: $didFail
        ) {
          Button("OK", action: emptyAction)
        }

      LabeledContent("didFail", value: didFail.description)
    }

    Section {
      Button("Torigger Error") {
        errorModel.setError(true)
      }
      .alert(
        isPresented: .constant(errorModel.error != nil),
        error: errorModel.error
      ) { _ in
        Button("OK") {
          errorModel.setError(false)
        }
      } message: {
        if let failureReason = $0.failureReason {
          Text(failureReason)
        } else {
          EmptyView()
        }
      }

      LabeledContent(
        "errorModel.error",
        value: (errorModel.error != nil).description
      )
    }

    Section {
      Button("Request") {
        do {
          throw MyError.failed
        } catch {
          localizedErrorModel = .init(error: error)
        }
      }
      .alert(
        isPresented: .constant(localizedErrorModel != nil),
        error: localizedErrorModel) { _ in
          Button("OK") {
            localizedErrorModel = nil
          }
        } message: {
          Text($0.failureReason ?? "")
        }

      LabeledContent(
        "localizedErrorModel",
        value: (localizedErrorModel != nil).description
      )
    }
  }
}

#Preview {
  List {
    Modifiers_alert()
  }
}

extension Modifiers_alert {

  struct LoginForm: View {

    @Binding var didFail: Bool

    var body: some View {
      Button("Trigger Alert") {
        didFail = true
      }
    }
  }

  @Observable
  class ErrorModel {

    private(set) var error: MyError?

    func setError(_ isError: Bool) {
      error = isError ? MyError.failed : nil
    }
  }
}
