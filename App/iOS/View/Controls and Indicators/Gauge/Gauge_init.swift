//
//  Gauge_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/gauge
private struct ContentView: View {

  @State private var batteryLevel = 0.4

  var body: some View {
    Gauge(value: batteryLevel) {
      Text("Battery Level")
    }
  }
}

#Preview {
  List {
    ContentView()
  }
}
