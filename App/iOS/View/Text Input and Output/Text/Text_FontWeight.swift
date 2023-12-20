//
//  FontWeightExample.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/font/weight
struct Text_FontWeight: View {

    var body: some View {
      Text("black")
        .fontWeight(.black)

      Text("bold")
        .fontWeight(.bold)

      Text("heavy")
        .fontWeight(.heavy)

      Text("light")
        .fontWeight(.light)

      Text("medium")
        .fontWeight(.medium)

      Text("regular")
        .fontWeight(.regular)

      Text("semibold")
        .fontWeight(.semibold)

      Text("thin")
        .fontWeight(.thin)

      Text("ultraLight")
        .fontWeight(.ultraLight)
    }
}

#Preview {
  List {
    Text_FontWeight()
  }
  .font(.title)
}
