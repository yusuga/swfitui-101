//
//  Image_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

struct Image_init: View {
    var body: some View {
      VStack {
        Image(systemName: "newspaper")
          .resizable()
          .aspectRatio(contentMode: .fit)
        Text("Water wheel")
      }
    }
}

#Preview {
  List {
    Image_init()
  }
}
