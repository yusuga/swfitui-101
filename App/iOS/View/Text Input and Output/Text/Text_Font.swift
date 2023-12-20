//
//  Text_Font.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text/font(_:)
struct Text_Font: View {

  var body: some View {
#if os(macOS)
    Text("extraLargeTitle2")
      .font(.extraLargeTitle2)

    Text("extraLargeTitle")
      .font(.extraLargeTitle)
#endif

    Text("largeTitle")
      .font(.largeTitle)

    Text("title")
      .font(.title)

    Text("title2")
      .font(.title2)

    Text("title3")
      .font(.title3)

    Text("headline")
      .font(.headline)

    Text("subheadline")
      .font(.subheadline)

    Text("body")
      .font(.body)

    Text("callout")
      .font(.callout)

    Text("caption")
      .font(.caption)

    Text("caption2")
      .font(.caption2)

    Text("footnote")
      .font(.footnote)

    Text("footnote")
      .font(.system(size: 60))
  }
}

#Preview {
  List {
    Text_Font()
  }
}
