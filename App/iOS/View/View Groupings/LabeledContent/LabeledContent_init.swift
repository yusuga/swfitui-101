//
//  LabeledContent_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/labeledcontent
private struct LabeledContent_init: View {

  let person: Person = Person(name: "John Doe", age: 30, height: 175, pets: [Pet(species: "Dog", name: "Buddy")])

  var body: some View {
    Section("Information") {
      LabeledContent("Name", value: person.name)
      LabeledContent("Age", value: person.age, format: .number)
//      LabeledContent("Height", value: person.height, format: .measurement(width: .abbreviated))
    }

    if !person.pets.isEmpty {
      Section("Pets") {
        ForEach(person.pets) { pet in
          LabeledContent(pet.species, value: pet.name)
        }
      }
    }
  }
}

#Preview {
  Form {
    LabeledContent_init()
  }
}

private struct Person {

  let name: String
  let age: Int
  let height: Double
  let pets: [Pet]
}

private struct Pet: Identifiable {

  let species: String
  let name: String

  let id = UUID()
}
