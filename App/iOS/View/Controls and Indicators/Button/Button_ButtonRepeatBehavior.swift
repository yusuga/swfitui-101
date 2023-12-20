//
//  ButtonRepeatBehaviorExample.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/buttonrepeatbehavior
struct Button_ButtonRepeatBehavior: View {

  @State var count = 0

  var body: some View {
    Button("automatic") { count += 1 }
      .buttonRepeatBehavior(.automatic)

    Button("enabled") { count += 1 }
      .buttonRepeatBehavior(.enabled)

    Button("disabled") { count += 1 }
      .buttonRepeatBehavior(.disabled)

    Text(count.description)
  }
}

#Preview {
  VStack(spacing: 16) {
    Button_ButtonRepeatBehavior()
  }
}
