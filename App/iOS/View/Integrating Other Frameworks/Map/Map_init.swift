//
//  Map_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import MapKit

/// - Seealso: https://developer.apple.com/documentation/mapkit/map
private struct Map_init: View {

  let cityHallLocation = CLLocationCoordinate2D(latitude: 37.7794, longitude: -122.4184)
  let publicLibraryLocation = CLLocationCoordinate2D(latitude: 37.7787, longitude: -122.4163)
  let playgroundLocation = CLLocationCoordinate2D(latitude: 37.7813, longitude: -122.4159)

  var body: some View {
    Map {
      Marker("San Francisco City Hall", coordinate: cityHallLocation)
        .tint(.orange)
      Marker("San Francisco Public Library", coordinate: publicLibraryLocation)
        .tint(.blue)
      Annotation("Diller Civic Center Playground", coordinate: playgroundLocation) {
        ZStack {
          RoundedRectangle(cornerRadius: 5)
            .fill(Color.yellow)
          Text("🛝")
            .padding(5)
        }
      }
    }
    .mapControlVisibility(.hidden)
  }
}

#Preview {
  Map_init()
}
