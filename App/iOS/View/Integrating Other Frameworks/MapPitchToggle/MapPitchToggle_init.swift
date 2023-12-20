//
//  MapPitchToggle_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import MapKit

/// - SeeAlso: https://developer.apple.com/documentation/mapkit/mappitchtoggle
private struct MapPitchToggle_init: View {

  @Namespace var mapScope

  var body: some View {
    VStack {
      Map(scope: mapScope)
      MapPitchToggle(scope: mapScope)
    }
    .mapScope(mapScope)
  }
}

#Preview {
  MapPitchToggle_init()
}
