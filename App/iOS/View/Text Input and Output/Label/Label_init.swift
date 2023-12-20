//
//  Label_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/label
private struct Label_init: View {

  let person = Person(fullName: "John Doe", title: "Developer", profileColor: .blue)

  var body: some View {
    Label("Lightning", systemImage: "bolt.fill")

    Label("Lightning", systemImage: "bolt.fill")
      .labelStyle(.titleOnly)

    Label("Lightning", systemImage: "bolt.fill")
      .labelStyle(.iconOnly)

    Label("Lightning", systemImage: "bolt.fill")
      .labelStyle(.titleAndIcon)

    Label {
      Text(person.fullName)
        .font(.body)
        .foregroundColor(.primary)
      Text(person.title)
        .font(.subheadline)
        .foregroundColor(.secondary)
    } icon: {
      Circle()
        .fill(person.profileColor)
        .frame(width: 44, height: 44, alignment: .center)
        .overlay(Text(person.initials))
    }
  }
}

#Preview {
  VStack(spacing: 16) {
    Label_init()
  }
}

private struct Person {

  var fullName: String
  var title: String
  var profileColor: Color
  var initials: String

  // 必要に応じて初期化子を追加することもできます。
  init(fullName: String, title: String, profileColor: Color) {
    self.fullName = fullName
    self.title = title
    self.profileColor = profileColor
    self.initials = fullName.initials
  }
}

private extension String {

  var initials: String {
    split(separator: " ")
      .compactMap { $0.first }
      .map { String($0) }
      .joined()
  }
}
