//
//  NavigationStack_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - Seealso: https://developer.apple.com/documentation/swiftui/navigationstack
struct NavigationStack_init: View {

  var body: some View {
    NavigationStack {
      List {
        NavigationLink("Mint") { ColorDetail(color: .mint) }
        NavigationLink("Pink") { ColorDetail(color: .pink) }
        NavigationLink("Teal") { ColorDetail(color: .teal) }
      }
      .navigationTitle("Colors")
    }

    NavigationStack {
      List {
        NavigationLink("Mint", value: Color.mint)
        NavigationLink("Pink", value: Color.pink)
        NavigationLink("Teal", value: Color.teal)
      }
      .navigationDestination(for: Color.self) { color in
        ColorDetail(color: color)
      }
      .navigationTitle("Colors")
    }
  }
}

#Preview {
  NavigationStack_init()
}

private struct ColorDetail: View {

  let color: Color

  var body: some View {
    color.navigationTitle(color.description)
  }
}
