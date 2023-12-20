//
//  Table_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/table
private struct Table_init: View {

  @State private var people = [
    Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
    Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
    Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
    Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
  ]

  var body: some View {
    Table(people) {
      TableColumn("Given Name", value: \.givenName)
      TableColumn("Family Name", value: \.familyName)
      TableColumn("E-Mail Address", value: \.emailAddress)
    }
  }
}

#Preview {
  Table_init()
}

private struct Person: Identifiable {

  let givenName: String
  let familyName: String
  let emailAddress: String
  let id = UUID()

  var fullName: String { givenName + " " + familyName }
}
