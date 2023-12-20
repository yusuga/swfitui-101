//
//  TextEditor_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/texteditor
private struct TextEditor_init: View {

  @State var text1 = "This is some editable text."
  @State var text2 = "This is some editable text."
  @State var text3 = Array(repeating: "This is some editable text.", count: 3).joined(separator: " ")
  @State var text4 = "This is some editable text."
  @State var text5 = ""

  @State var isShowingEditor = false

  var body: some View {
    TextEditor(text: $text1)
      .border(.red)

    TextEditor(text: $text2)
      .foregroundStyle(.red)
      .font(.title)
      .border(.red)
//      .scrollDisabled(false)
//      .fixedSize(horizontal: true, vertical: false)

    TextEditor(text: $text3)
      .lineSpacing(20)
      .border(.red)

    Button("show editor") {
      isShowingEditor = true
    }
    .sheet(isPresented: $isShowingEditor) {
      DetailEditor(text: $text5)
    }
  }
}

#Preview {
  List {
    TextEditor_init()
  }
}

#Preview {
  VStack {
    TextEditor_init()
  }
}

extension TextEditor_init {

  struct DetailEditor: View {
    @Binding var text: String

    var body: some View {
      NavigationStack {
        TextEditor(text: $text)
          .padding()
          .border(.red)
          .navigationTitle("Editor")
      }
    }
  }
}
