//
//  TypesettingLanguage_Example.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/typesettinglanguage
struct TypesettingLanguage_Example: View {

  var body: some View {
    Text(verbatim: "แอปเปิล")

    Text(verbatim: "แอปเปิล")
      .typesettingLanguage(.automatic, isEnabled: true)

    Text(verbatim: "แอปเปิล")
      .typesettingLanguage(
        .explicit(
          .init(languageCode: .thai)
        ),
        isEnabled: true
      )

    Text(verbatim: "แอปเปิล")
        .typesettingLanguage(
          .init(languageCode: .thai),
          isEnabled: true
        )
  }
}

#Preview {
  List {
    TypesettingLanguage_Example()
  }
  .font(.title)
}
