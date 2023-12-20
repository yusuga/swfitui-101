//
//  Canvas_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/canvas
struct Canvas_init: View {
  
  var body: some View {
    Canvas { context, size in
      context.stroke(
        Path(ellipseIn: CGRect(origin: .zero, size: size)),
        with: .color(.green),
        lineWidth: 4)
    }
    .frame(width: 300, height: 200)
    .border(Color.blue)
  }
}

#Preview {
  Canvas_init()
}
