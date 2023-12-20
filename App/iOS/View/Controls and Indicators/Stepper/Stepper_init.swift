//
//  Stepper_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/stepper
private struct Stepper_init: View {

  @State private var value = 0
  private let range = -6...21
  private let step = 5

  @State private var colorValue = 0
  let colors: [Color] = [.orange, .red, .gray, .blue, .green, .purple, .pink]

  var body: some View {
    Stepper("", value: $value)
      .fixedSize(horizontal: true, vertical: false)

    Stepper(
      value: $value,
      in: range,
      step: step
    ) {
      VStack(alignment: .leading, spacing: 4) {
        Text("Current: \(value)")
        Text("range: \(range.description)")
        Text("stepping by \(step)")
      }
    }

    Stepper {
      Text("Value: \(colorValue) Color: \(colors[colorValue].description)")
    } onIncrement: {
      incrementStep()
    } onDecrement: {
      decrementStep()
    }
    .padding(5)
    .background(colors[colorValue])
  }
}

#Preview {
  List {
    Stepper_init()
  }
}

#Preview {
  Stepper_init()
    .padding()
}


extension Stepper_init {

  func incrementStep() {
    colorValue += 1
    if colorValue >= colors.count { colorValue = 0 }
  }

  func decrementStep() {
    colorValue -= 1
    if colorValue < 0 { colorValue = colors.count - 1 }
  }
}
