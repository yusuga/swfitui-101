//
//  TabView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/tabview
struct TabView_init: View {

  @Environment(\.colorScheme) private var colorScheme: ColorScheme
  @State private var selectedTab: Tab = .received
  @State private var tabViewStyleType: TabViewStyleType = .automatic
  @State private var indexDisplayModeType: IndexDisplayModeType = .automatic

  var body: some View {
    switch tabViewStyleType {
    case .automatic:
      contents
        .tabViewStyle(.automatic)
    case .page:
      switch indexDisplayModeType {
      case .always:
        contents
          .tabViewStyle(.page(indexDisplayMode: .always))
      case .automatic:
        contents
          .tabViewStyle(.page(indexDisplayMode: .automatic))
      case .never:
        contents
          .tabViewStyle(.page(indexDisplayMode: .never))
      }
#if os(watchOS)
    case .verticalPage:
      contents
        .tabViewStyle(.verticalPage)
      // .tabViewStyle(.verticalPage(transitionStyle: .automatic))
#endif
    }
  }

  @ViewBuilder
  private var contents: some View {
    TabView(selection: $selectedTab) {
      List {
        Button("Mode Tab.sent") {
          selectedTab = .sent
        }
        Picker("TabViewStyle", selection: $tabViewStyleType) {
          ForEach(TabViewStyleType.allCases) {
            Text($0.rawValue)
              .tag($0)
          }
        }
        Picker("IndexDisplayMode", selection: $indexDisplayModeType) {
          ForEach(IndexDisplayModeType.allCases) {
            Text($0.rawValue)
              .tag($0)
          }
        }
      }
      .tabItem {
        Label("Received", systemImage: "tray.and.arrow.down.fill")
      }
      .tag(Tab.received)

      List {
        Button("Move Tab.account") { selectedTab = .account }
      }
      .tabItem {
        Label("Sent", systemImage: "tray.and.arrow.up.fill")
      }
      .tag(Tab.sent)

      List {
        Button("Move Tabreceived") { selectedTab = .received }
      }
      .tabItem {
        Label("Account", systemImage: "person.crop.circle.fill")
      }
      .tag(Tab.account)
    }
  }
}

extension TabView_init {

  enum Tab {
    case received
    case sent
    case account
  }

  enum TabViewStyleType: String, Hashable, Identifiable, CaseIterable {
    case automatic
    case page
#if os(watchOS)
    case verticalPage
#endif

    var id: Self { self }
  }

  enum IndexDisplayModeType: String, Hashable, Identifiable, CaseIterable {
    case always
    case automatic
    case never

    var id: Self { self }
  }
}

#Preview {
  TabView_init()
}
