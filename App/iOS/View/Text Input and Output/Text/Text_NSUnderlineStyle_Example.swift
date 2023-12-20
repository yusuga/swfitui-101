//
//  Text_NSUnderlineStyle_Example.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

struct Text_NSUnderlineStyle_Example: View {

    var body: some View {
      Text(attributedString("single", nsUnderlineStyle: .single))
      Text(attributedString("thick", nsUnderlineStyle: .thick))
      Text(attributedString("double", nsUnderlineStyle: .double))
      Text(attributedString("patternDot", nsUnderlineStyle: .patternDot))
      Text(attributedString("patternDash", nsUnderlineStyle: .patternDash))
      Text(attributedString("patternDashDot", nsUnderlineStyle: .patternDashDot))
      Text(attributedString("patternDashDotDot", nsUnderlineStyle: .patternDashDotDot))
      Text(attributedString("byWord", nsUnderlineStyle: .byWord))
    }
}

#Preview {
  List {
    Text_NSUnderlineStyle_Example()
  }
  .font(.system(size: 40))
  .foregroundStyle(.gray)
}

private func attributedString(
  _ string: String,
  nsUnderlineStyle: NSUnderlineStyle
) -> AttributedString {
  let lineStyle = Text.LineStyle(nsUnderlineStyle: nsUnderlineStyle)

  var attributedString = AttributedString(string + (lineStyle == nil ? " (nil)" : ""))
  attributedString.strikethroughStyle = lineStyle
  attributedString.strikethroughColor = .red
  attributedString.underlineStyle = lineStyle
  attributedString.underlineColor = .blue
  return attributedString
}
