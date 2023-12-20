//
//  TabView_TabItem.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

private struct TabView_TabItem: View {

  var body: some View {
    TabView {
      List {
        Text("Tab 1")
      }
      .badge(2)
      .tabItem {
        Label("Tab 1", systemImage: "tray.and.arrow.down.fill")
      }

      List {
        Text("Tab 2")
      }
      .badge("😇")
      .tabItem {
        Label("Tab 2", systemImage: "tray.and.arrow.up.fill")
      }

      NavigationStack {
        List {
          NavigationLink("Push") {
            Text("Detail")
              .toolbar(.hidden, for: .tabBar)
          }
        }
        .toolbar {
          ToolbarItem(placement: .bottomBar) {
            Button("Title", action: emptyAction)
              .font(.largeTitle)
              .frame(height: 80)
          }
        }
      }
      .tabItem {
        Text("Tab 3")
      }
    }
  }
}

#Preview {
  TabView_TabItem()
}

