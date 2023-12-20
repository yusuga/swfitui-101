//
//  Modifiers_textSelection.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

private struct Modifiers_textSelection: View {

  var body: some View {
    Text("enabled")
      .textSelection(.enabled)

    Text("disabled")
      .textSelection(.disabled)
  }
}

#Preview {
  List {
    Modifiers_textSelection()
  }
}
