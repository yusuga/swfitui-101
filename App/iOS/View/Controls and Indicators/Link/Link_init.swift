//
//  Link_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/link
private struct Link_init: View {

  var body: some View {
    Link(
      "View Our Terms of Service",
      destination: URL(string: "https://www.example.com/TOS.html")!
    )
    .environment(\.openURL, OpenURLAction {
      print("Open \($0)")
      return .handled
    })
  }
}

#Preview {
  Link_init()
}
