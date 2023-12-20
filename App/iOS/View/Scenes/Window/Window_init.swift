//
//  Window_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

struct Window_init: App {

  var body: some Scene {
    WindowGroup {
      Text("MailViewer")
    }
#if os(macOS)
    Window("Connection Doctor", id: "connection-doctor") {
      Text("ConnectionDoctor")
    }
#endif
  }
}

