//
//  TextEditor_TextAlignment.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/textalignment
private struct TextEditor_TextAlignment: View {

  @State var text1 = "abc"
  @State var text2 = "abc"
  @State var text3 = "abc"

  var body: some View {
    TextEditor(text: $text1)
      .multilineTextAlignment(.leading)
      .border(.red)

    TextEditor(text: $text2)
      .multilineTextAlignment(.center)
      .border(.red)

    TextEditor(text: $text3)
      .multilineTextAlignment(.trailing)
      .border(.red)
  }
}

#Preview {
  List {
    TextEditor_TextAlignment()
  }
}
