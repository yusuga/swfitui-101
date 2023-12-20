//
//  AsyncImage_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/asyncimage
private struct AsyncImage_init: View {

  var body: some View {
    AsyncImage(url: URL(string: "https://cataas.com/cat"))
      .frame(width: 200, height: 200)

    AsyncImage(url: URL(string: "https://cataas.com/cat")) { image in
      image.resizable()
    } placeholder: {
      ProgressView()
    }
    .frame(width: 50, height: 50)

    AsyncImage(url: URL(string: "https://cataas.com/cat")) { phase in
      if let image = phase.image {
        image // Displays the loaded image.
      } else if phase.error != nil {
        Color.red // Indicates an error.
      } else {
        Color.blue // Acts as a placeholder.
      }
    }
  }
}

#Preview {
  List {
    AsyncImage_init()
  }
}
