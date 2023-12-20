//
//  LocationButton_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import CoreLocationUI

/// - SeeAlso: https://developer.apple.com/documentation/corelocationui/locationbutton
private struct LocationButton_init: View {

  var body: some View {
    LocationButton(.currentLocation) {
      // Fetch location with Core Location.
    }
    .symbolVariant(.fill)
    .labelStyle(.titleAndIcon)
  }
}

#Preview {
  LocationButton_init()
}
