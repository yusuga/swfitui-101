//
//  Text_TruncationMode_Example.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text/truncationmode
struct Text_TruncationMode_Example: View {
  
    var body: some View {
      Text(Array(repeating: "defualt", count: 10).joined(separator: " "))
        .lineLimit(1)

      Text(Array(repeating: "head", count: 10).joined(separator: " "))
        .lineLimit(1)
        .truncationMode(.head)

      Text(Array(repeating: "middle", count: 10).joined(separator: " "))
        .lineLimit(1)
        .truncationMode(.middle)

      Text(Array(repeating: "tail", count: 10).joined(separator: " "))
        .lineLimit(1)
        .truncationMode(.tail)
    }
}

#Preview {
  List {
    Text_TruncationMode_Example()
  }
  .font(.title)
}
