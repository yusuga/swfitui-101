//
//  ShareLink_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

struct ShareLink_init: View {

  var body: some View {
    ShareLink(
      item: URL(string: "https://developer.apple.com/xcode/swiftui/")!
    ) {
      Label("Share", image: "MyCustomShareIcon")
    }
  }
}

#Preview {
  ShareLink_init()
}
