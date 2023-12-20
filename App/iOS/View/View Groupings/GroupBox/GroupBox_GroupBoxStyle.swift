//
//  GroupBox_GroupBoxStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/19.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/groupboxstyle
private struct GroupBox_GroupBoxStyle: View {

  @State var userAgreed = false

  let agreementText = """
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec venenatis purus. Vivamus accumsan rhoncus tellus vitae iaculis. Fusce sed nisi sagittis, ultrices mauris a, condimentum risus. Sed in lacus sollicitudin, facilisis orci in, fermentum elit. Phasellus convallis, justo ut viverra elementum, ex risus gravida purus, id porttitor sapien sapien id orci.
      """

  var body: some View {
    GroupBox(
      label: Label("End-User Agreement", systemImage: "building.columns")
    ) {
      ScrollView(.vertical, showsIndicators: true) {
        Text(agreementText)
          .font(.footnote)
      }
      .frame(height: 100)

      Toggle(isOn: $userAgreed) {
        Text("I agree to the above terms")
      }
    }
    .groupBoxStyle(.automatic)
  }
}

#Preview {
  List {
    GroupBox_GroupBoxStyle()
  }
}

