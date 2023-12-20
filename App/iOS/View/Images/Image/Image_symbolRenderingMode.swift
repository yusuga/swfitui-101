//
//  Image_symbolRenderingMode.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/10/01.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/symbolrenderingmode
struct Image_symbolRenderingMode: View {

  let systemName = "folder.fill.badge.questionmark"
  let columns = Array(repeating: GridItem(.flexible()), count: 3)

  var body: some View {
    ScrollView {
      LazyVGrid(columns: columns, spacing: 16) {
        Image(systemName: systemName)
          .foregroundStyle(.red)

        Image(systemName: systemName)
          .symbolRenderingMode(.monochrome)
          .foregroundStyle(.red)

        Image(systemName: systemName)
          .symbolRenderingMode(.multicolor)
          .foregroundStyle(.red, .blue)

        Image(systemName: systemName)
          .foregroundStyle(.red)
          .symbolRenderingMode(.hierarchical)

        Image(systemName: systemName)
          .symbolRenderingMode(.palette)
          .foregroundStyle(.red, .blue)
      }
      .font(.system(size: 60))
    }
  }
}

#Preview {
    Image_symbolRenderingMode()
}
