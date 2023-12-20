//
//  ForEach_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/foreach
private struct ForEach_init: View {

  private struct NamedFont: Identifiable {
    let name: String
    let font: Font
    var id: String { name }
  }

  private let namedFonts: [NamedFont] = [
    NamedFont(name: "Large Title", font: .largeTitle),
    NamedFont(name: "Title", font: .title),
    NamedFont(name: "Headline", font: .headline),
    NamedFont(name: "Body", font: .body),
    NamedFont(name: "Caption", font: .caption)
  ]

  var body: some View {
    ForEach(namedFonts) { namedFont in
      Text(namedFont.name)
        .font(namedFont.font)
    }
  }
}

#Preview {
  ForEach_init()
}
