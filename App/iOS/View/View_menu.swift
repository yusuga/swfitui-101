//
//  View_menu.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

struct View_menu: View {
  var body: some View {
    Text("Turtle Rock")
      .padding()
      .contextMenu {
        Button {
          // Add this item to a list of favorites.
        } label: {
          Label("Add to Favorites", systemImage: "heart")
        }
        Button {
          // Open Maps and center it on this item.
        } label: {
          Label("Show in Maps", systemImage: "mappin")
        }
      }
  }
}

#Preview {
  View_menu()
}
