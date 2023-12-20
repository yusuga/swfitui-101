//
//  MapPitchSlider_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import MapKit

/// - SeeAlso: https://developer.apple.com/documentation/mapkit/mappitchslider
private struct MapPitchSlider_init: View {

  @Namespace var mapScope

  var body: some View {
    VStack {
      Map(scope: mapScope)
#if os(macOS)
      MapPitchSlider(scope: mapScope)
#endif
    }
    .mapScope(mapScope)
    .background(Color(.systemGroupedBackground))
  }
}

#Preview {
  MapPitchSlider_init()
}
