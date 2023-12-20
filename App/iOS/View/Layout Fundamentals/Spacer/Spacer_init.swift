//
//  Spacer_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/spacer
private struct Spacer_init: View {

  var body: some View {
    HStack {
      Image(systemName: "checkmark")
      Text("Megan")
    }
    .border(Color.blue)

    HStack {
      Spacer()
      Image(systemName: "checkmark")
      Text("Megan")
    }
    .border(Color.blue)

    HStack {
      Image(systemName: "checkmark")
      Spacer()
      Text("Megan")
    }
    .border(Color.blue)

    HStack {
      Spacer()
      Image(systemName: "checkmark")
      Text("Megan")
      Spacer()
    }
    .border(Color.blue)
  }
}

#Preview {
  List {
    Spacer_init()
  }
}
