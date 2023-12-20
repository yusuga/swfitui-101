//
//  Preview_PreviewCamera.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/DeveloperToolsSupport/PreviewCamera
private struct ContentView: View {

  var body: some View {
    Text("Hello, World!")
  }
}

#if os(visionOS)
/*
#Preview {
  ContentView()
},
camera: {
  [
    .init(
  ]
}
 */
#endif
