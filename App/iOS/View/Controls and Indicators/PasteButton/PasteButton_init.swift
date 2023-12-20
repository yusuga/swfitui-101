//
//  PasteButton_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/pastebutton
struct PasteButton_init: View {

  @State private var pastedText: String = ""

  var body: some View {
    HStack {
      PasteButton(payloadType: String.self) { strings in
        pastedText = strings[0]
      }
      Divider()
      Text(pastedText)
      Spacer()
    }
  }
}

#Preview {
  List {
    PasteButton_init()
  }
}
