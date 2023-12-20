//
//  MapScaleView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import MapKit

/// - SeeAlso: https://developer.apple.com/documentation/mapkit/mapscaleview
private struct MapScaleView_init: View {
  
  @Namespace var mapScope
  
  var body: some View {
    ZStack(alignment: .trailing) {
      Map(scope: mapScope)
      MapScaleView(anchorEdge: .trailing, scope: mapScope)
    }
    .mapScope(mapScope)
  }
}

#Preview {
  MapScaleView_init()
}
