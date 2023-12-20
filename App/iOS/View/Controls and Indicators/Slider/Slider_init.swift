//
//  Slider_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

private struct Slider_init: View {

  @State private var speed = 50.0
  @State private var isEditing = false

  var body: some View {
    VStack {
      Slider(
        value: $speed,
        in: 0...100,
        onEditingChanged: { editing in
          isEditing = editing
        }
      )
      Text("\(speed)")
        .foregroundColor(isEditing ? .red : .blue)
    }
  }
}

#Preview {
  List {
    Slider_init()
  }
}
