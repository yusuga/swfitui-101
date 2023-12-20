//
//  ZStack_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/zstack
private struct ZStack_init: View {

  let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]

  var body: some View {
    ZStack {
      ForEach(0..<colors.count, id: \.self) {
        Rectangle()
          .fill(colors[$0])
          .frame(width: 100, height: 100)
          .offset(x: CGFloat($0) * 10.0, y: CGFloat($0) * 10.0)
      }
    }

    Spacer().frame(maxHeight: 100)

    ZStack(alignment: .bottomLeading) {
      Rectangle()
        .fill(Color.red)
        .frame(width: 100, height: 50)
      Rectangle()
        .fill(Color.blue)
        .frame(width:50, height: 100)
    }
    .border(Color.green, width: 1)
  }
}

#Preview {
  ZStack_init()
}
