//
//  Modifiers_animation.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

private struct Modifiers_animation: View {

  @State var flag = false

  var body: some View {
    Text(flag ? "abc" : "defg")
      .animation(.easeInOut, value: UUID())

    Toggle("Toggle", isOn: $flag)
  }
}

#Preview {
  List {
    Modifiers_animation()
  }
}
