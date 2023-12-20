//
//  DatePicker_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/datepicker
private struct ContentView: View {

  @State var date = Date()

  var body: some View {
    DatePicker(
      "Start Date",
      selection: $date,
      displayedComponents: [.date]
    )
  }
}

#Preview {
  List {
    ContentView()
  }
}
