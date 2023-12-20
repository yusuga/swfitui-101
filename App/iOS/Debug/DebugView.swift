//
//  DebugView.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/19.
//

import SwiftUI

private struct DebugView: View {

  var body: some View {
    let _ = Self._printChanges
    Text("Hello, World!")
  }
}

#Preview {
  DebugView()
}
