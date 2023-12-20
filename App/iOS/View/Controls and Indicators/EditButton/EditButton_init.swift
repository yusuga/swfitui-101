//
//  EditButton_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

private struct ContentView: View {
  
  @State private var fruits = [
    "Apple",
    "Banana",
    "Papaya",
    "Mango"
  ]


  var body: some View {
    NavigationView {
      List {
        ForEach(fruits, id: \.self) { fruit in
          Text(fruit)
        }
        .onDelete { fruits.remove(atOffsets: $0) }
        .onMove { fruits.move(fromOffsets: $0, toOffset: $1) }
      }
      .navigationTitle("Fruits")
      .toolbar {
        EditButton()
      }
    }
  }
}

#Preview {
  ContentView()
}
