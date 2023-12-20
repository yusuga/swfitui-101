//
//  Preview_PreviewTrait.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

private struct ContentView: View {

  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

#Preview(
  "defaultLayout",
  traits: .defaultLayout
) {
  ContentView()
}

#Preview(
  "landscapeLeft",
  traits: .landscapeLeft
) {
  ContentView()
}

#Preview(
  "landscapeRight",
  traits: .landscapeRight
) {
  ContentView()
}

#Preview(
  "defaultLayout",
  traits: .portrait
) {
  ContentView()
}

#Preview(
  "portraitUpsideDown",
  traits: .portraitUpsideDown
) {
  ContentView()
}

#Preview(
  "sizeThatFitsLayout",
  traits: .sizeThatFitsLayout
) {
  ContentView()
}

#Preview(
  "fixedLayout",
  traits: .fixedLayout(width: 200, height: 300)
) {
  ContentView()
}

#if os(visionOS)
#Preview(
  "fixedLayout",
  traits: .fixedLayout(width: 200, height: 300, depth: 0.5)
) {
  ContentView()
}
#endif

#Preview(
  "fixedLayout",
  traits: .fixedLayout(width: 200, height: 300),
  .landscapeLeft
) {
  ContentView()
}
