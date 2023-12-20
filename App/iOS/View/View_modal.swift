//
//  View_modal.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

struct View_modal: View {

  @State private var showSettings = false

  var body: some View {
    Button("View Settings") {
      showSettings = true
    }
    .sheet(isPresented: $showSettings) {
      VStack {
        Text("↑")
          .padding(.top, 16)
//        Text("What's its name?")
        Spacer()
      }
      .font(.title)
      .foregroundColor(.accentColor)
      .presentationDetents([.medium, .large])
      .presentationDragIndicator(.visible)
    }
  }
}

#Preview {
  View_modal()
}
