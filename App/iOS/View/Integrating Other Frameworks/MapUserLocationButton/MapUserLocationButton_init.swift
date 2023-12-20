//
//  MapUserLocationButton_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import MapKit

/// - SeeAlso: https://developer.apple.com/documentation/mapkit/mapuserlocationbutton
private struct MapUserLocationButton_init: View {

  @Namespace var mapScope
  
  var body: some View {
    VStack {
      Map(scope: mapScope)
      MapUserLocationButton(scope: mapScope)
    }
    .mapScope(mapScope)
  }
}

#Preview {
  MapUserLocationButton_init()
}
