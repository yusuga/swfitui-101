//
//  Section_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/section
private struct Section_init: View {

  var body: some View {
    Section("Section title") {
      Text("Text")
    }

    Section {
      Text("Text")
    } header: {
      HStack {
        Text("Header")
        Spacer()
        Button("Button", action: emptyAction)
          .font(.caption)
      }
    }
  }
}

#Preview(fileName()) {
  List {
    Section_init()
  }
}

#Preview {
  Form {
    Section_init()
  }
}
