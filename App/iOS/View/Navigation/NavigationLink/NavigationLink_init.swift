//
//  NavigationLink_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/navigationlink
private struct NavigationLink_init: View {
  var body: some View {
    NavigationLink {
      Text("Detail")
    } label: {
      Label("Work Folder", systemImage: "folder")
    }

    NavigationLink("Work Folder") {
      Text("Detail")
    }
  }
}

#Preview {
  NavigationStack {
    List {
      NavigationLink_init()
    }
    .navigationTitle("NavigationLink")
  }
}
