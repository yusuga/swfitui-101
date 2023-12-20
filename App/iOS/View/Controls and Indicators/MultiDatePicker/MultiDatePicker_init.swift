//
//  MultiDatePicker_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/multidatepicker
struct MultiDatePicker_init: View {

  @State private var dates: Set<DateComponents> = []

  var body: some View {
    MultiDatePicker("Dates Available", selection: $dates)
  }
}

#Preview {
  List {
    MultiDatePicker_init()
  }
}
