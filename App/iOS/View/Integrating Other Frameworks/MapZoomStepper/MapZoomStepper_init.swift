//
//  MapZoomStepper_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import MapKit

/// - SeeAlso: https://developer.apple.com/documentation/mapkit/mapzoomstepper
private struct MapZoomStepper_init: View {

  @Namespace var mapScope
  
  var body: some View {
    VStack {
      Map(scope: mapScope)
#if os(macOS)
      MapZoomStepper(scope: mapScope)
#endif
    }
    .mapScope(mapScope)
  }
}

#Preview {
  MapZoomStepper_init()
}
