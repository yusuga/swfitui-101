//
//  DisclosureGroup_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/disclosuregroup
private struct DisclosureGroup_init: View {

  struct ToggleStates {
    var oneIsOn: Bool = false
    var twoIsOn: Bool = true
  }
  @State private var toggleStates = ToggleStates()
  @State private var topExpanded: Bool = true


  var body: some View {
    DisclosureGroup("Items", isExpanded: $topExpanded) {
      Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
      Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
      DisclosureGroup("Sub-items") {
        Text("Sub-item 1")
      }
    }
  }
}

#Preview {
  List {
    DisclosureGroup_init()
  }
}
