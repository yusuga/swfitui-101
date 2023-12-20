//
//  Center-a-view-between-Spacers-in-an-HStack.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/10/08.
//

import SwiftUI

/// - SeeAlso:
///     - https://stackoverflow.com/a/63755614
///     - https://www.bigmountainstudio.com/community/public/posts/281487-how-to-align-text-and-views-in-swiftui
private struct Center_a_view_between_Spacers_in_an_HStack: View {

  var body: some View {
    VStack {
      // Overlay
      HStack {
        Spacer()
          .overlay(Text("Foooooooo").border(.red), alignment: .leading)
        Text("Bar").border(.blue, width: 2)
        Spacer()
          .overlay(Text("Baz").border(.red), alignment: .trailing)
      }
      .padding()
      .border(.red)

      // ZStack
      ZStack {
        Text("Bar")
          .frame(maxWidth: .infinity)
          .border(.blue, width: 2)
        HStack {
          Spacer()
          Text("Baz")
            .border(.red)
        }
      }
      .padding()
      .border(.red)

      // Background
      Text("Bar")
        .frame(maxWidth: .infinity)
        .border(.blue, width: 2)
        .background {
          HStack {
            Spacer()
            Text("Baz")
              .border(.red)
          }
        }
      .padding()
      .border(.red)
    }
  }
}

#Preview {
  Center_a_view_between_Spacers_in_an_HStack()
}
