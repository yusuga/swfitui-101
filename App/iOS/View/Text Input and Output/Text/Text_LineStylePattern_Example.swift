//
//  Text_LineStylePattern_Example.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

struct Text_LineStylePattern_Example: View {

    var body: some View {
      Text(attributedString("solid", pattern: .solid))

      Text(attributedString("dot", pattern: .dot))

      Text(attributedString("dash", pattern: .dash))

      Text(attributedString("dashDot", pattern: .dashDot))

      Text(attributedString("dashDotDot", pattern: .dashDotDot))
    }
}

#Preview {
  List {
    Text_LineStylePattern_Example()
  }
  .font(.system(size: 60))
  .foregroundStyle(.gray)
}

private func attributedString(
  _ string: String,
  pattern: Text.LineStyle.Pattern
) -> AttributedString {
  var attributedString = AttributedString(string)
  attributedString.strikethroughStyle = .init(pattern: pattern, color: .red)
  attributedString.underlineStyle = .init(pattern: pattern, color: .blue)
  return attributedString
}
