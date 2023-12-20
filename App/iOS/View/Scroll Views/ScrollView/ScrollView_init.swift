//
//  ScrollView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/scrollview
private struct ScrollView_init: View {

  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        ForEach(0..<100) {
          Text("Row \($0)")
        }
      }
    }
  }
}

#Preview {
  ScrollView_init()
}
