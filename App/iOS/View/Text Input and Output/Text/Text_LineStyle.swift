//
//  Text_LineStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text/linestyle
struct Text_LineStyle: View {

  var body: some View {
    Text(attributedString("single", lineStyle: .single))
  }
}

#Preview {
  List {
    Text_LineStyle()
  }
  .font(.title)
}

private func attributedString(
  _ string: String,
  lineStyle: Text.LineStyle?
) -> AttributedString {
  var attributedString = AttributedString(string)
  attributedString.strikethroughStyle = lineStyle
  return attributedString
}
