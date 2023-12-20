//
//  SecureField_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/securefield
private struct SecureField_init: View {

  @State private var username: String = ""
  @State private var password: String = ""

  var body: some View {
    TextField(
      "User name (email address)",
      text: $username
    )
    .autocapitalization(.none)
    .disableAutocorrection(true)
    .border(Color(UIColor.separator))

    SecureField(
      "Password",
      text: $password
    ) {
      emptyAction()
    }
    .border(Color(UIColor.separator))
  }
}

#Preview {
  Form {
    SecureField_init()
  }
}
