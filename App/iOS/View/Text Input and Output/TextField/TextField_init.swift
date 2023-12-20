//
//  TextField_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/textfield
private struct TextField_init: View {

  @State var text = ""

  @State var username = ""
  @State var password = ""
  @FocusState var emailFieldIsFocused: Bool

  var body: some View {
    TextField("placeholder", text: $text)

    TextField("", text: $text)

    TextField("placeholder", text: $text, prompt: Text("prompt and title"))

    TextField("", text: $text, prompt: Text("prompt without title"))

    TextField(text: $text, prompt: Text("prompt and label")) {
      Label("label", systemImage: "newspaper")
    }

    TextField(text: $text) {
      Label("label without prompt", systemImage: "newspaper")
        .foregroundStyle(.red)
    }


//    TextField(
//      "User name (email address)",
//      text: $username
//    )
//    .focused($emailFieldIsFocused)
//    .onSubmit {
//      // validate(name: username)
//    }
//    .textInputAutocapitalization(.never)
//    .disableAutocorrection(true)
//    .border(.secondary)
    /*

    Text(username)
      .foregroundColor(emailFieldIsFocused ? .red : .blue)

    TextField(text: $username, prompt: Text("Required")) {
      Text("Username")
    }

    SecureField(text: $password, prompt: Text("Required")) {
      Text("Password")
    }

    VStack {
      TextField(
        "Given Name",
        text: $username
      )
      .disableAutocorrection(true)
      TextField(
        "Family Name",
        text: $password
      )
      .disableAutocorrection(true)
    }
    .textFieldStyle(.roundedBorder)
     */
  }
}

#Preview {
  List {
    TextField_init()
  }
  .scrollDismissesKeyboard(.immediately)
}

#Preview {
  TextField_init()
    .padding()
}
