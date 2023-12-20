//
//  TextField_init_axis.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

/// - SeeAlso:
///     - https://developer.apple.com/documentation/swiftui/view/linelimit(_:)-513mb
///     - https://developer.apple.com/documentation/swiftui/view/linelimit(_:)-4hzfa
struct TextField_init_axis: View {

  @State var text1 = ""
  @State var text2 = ""
  @State var text3 = ""
  @State var text4 = ""
  @State var text5 = ""

  var body: some View {
    TextField("horizontal", text: $text1, axis: .horizontal)

    TextField("vertical", text: $text2, axis: .vertical)

    TextField("vertical lineLimit(2)", text: $text3, axis: .vertical)
      .lineLimit(2)

    TextField("vertical lineLimit(3...4)", text: $text4, axis: .vertical)
      .lineLimit(3...4)

    TextField("vertical lineLimit(2, reservesSpace: true)", text: $text5, axis: .vertical)
      .lineLimit(2, reservesSpace: true)
  }
}

#Preview {
  List {
    TextField_init_axis()
  }
  .scrollDismissesKeyboard(.immediately)
}
