//
//  TextEditor_disable_editing.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

private struct TextEditor_Tips_disable_editing: View {

  @State var text = source

  var body: some View {
    TextEditor(text: $text)
      .frame(maxHeight: 100)
      .border(.red)
      .disabled(true)

    TextEditor(text: .constant(source))
      .frame(maxHeight: 100)
      .border(.blue)
  }
}

#Preview {
//  ScrollView {
    VStack {
      TextEditor_Tips_disable_editing()
        .padding()

      Spacer()
    }
//  }
}

private let source = """
  The quick brown fox jumps over the lazy dog.

  https://apple.com
  """
