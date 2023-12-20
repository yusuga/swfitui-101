//
//  MapCompass_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import MapKit

/// - SeeAlso: https://developer.apple.com/documentation/mapkit/mapcompass
private struct MapCompass_init: View {

  @Namespace var mapScope

  var body: some View {
    VStack {
      Map(scope: mapScope)
      MapCompass(scope: mapScope)
    }
    .mapScope(mapScope)
    .background(Color(.systemGroupedBackground))
  }
}

#Preview {
  MapCompass_init()
}
