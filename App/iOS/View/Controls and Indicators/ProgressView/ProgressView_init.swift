//
//  ProgressView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/progressview/
private struct ProgressView_init: View {

  @State var progress = 0.5

  var body: some View {
    VStack {
      ProgressView(value: progress)
      Button("More") { progress += 0.05 }
    }
  }
}

#Preview {
  List {
    ProgressView_init()
  }
}
