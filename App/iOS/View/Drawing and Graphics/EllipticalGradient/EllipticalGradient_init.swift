//
//  EllipticalGradient_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/ellipticalgradient
private struct EllipticalGradient_init: View {

  var body: some View {
    EllipticalGradient(gradient: .init(colors: [.red, .yellow]))
  }
}

#Preview {
  EllipticalGradient_init()
}
