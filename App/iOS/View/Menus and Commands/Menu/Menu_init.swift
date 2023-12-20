//
//  Menu_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

struct Menu_init: View {

  var body: some View {
    List {
      Menu("Actions") {
        Button("Duplicate", action: emptyAction)
        Button("Rename", action: emptyAction)
        Button("Delete…", action: emptyAction)
        Menu("Copy") {
          Button("Copy", action: emptyAction)
          Button("Copy Formatted", action: emptyAction)
          Button("Copy Library Path", action: emptyAction)
        }
      }

      Menu {
        Button("Open in Preview", action: emptyAction)
        Button("Save as PDF", action: emptyAction)
      } label: {
        Label("PDF", systemImage: "doc.fill")
      }

      Menu {
        Button(action: emptyAction) {
          Label("Add to Reading List", systemImage: "eyeglasses")
        }
        Button(action: emptyAction) {
          Label("Add Bookmarks for All Tabs", systemImage: "book")
        }
        Button(action: emptyAction) {
          Label("Show All Bookmarks", systemImage: "books.vertical")
        }
      } label: {
        Label("Add Bookmark", systemImage: "book")
      } primaryAction: {
        emptyAction()
      }

      Menu("PDF") {
        Button("Open in Preview", action: emptyAction)
        Button("Save as PDF", action: emptyAction)
      }
      .menuStyle(ButtonMenuStyle())
    }
    .toolbar {
      Menu("PDF") {
        Button("Open in Preview", action: emptyAction)
        Button("Save as PDF", action: emptyAction)
      }
    }
  }
}

#Preview {
  NavigationStack {
    Menu_init()
  }
}

/*
 struct Menu_init: View {
 var body: some View {
 // https://developer.apple.com/documentation/swiftui/pickerstyle/palette
 Menu("") {
 Picker("Palettes", selection: $selection) {
 ForEach(palettes) { palette in
 Label(palette.title, systemImage: selection == palette ?
 "circle.dashed.inset.filled" : "circle.fill")
 .tint(palette.tint)
 .tag(palette)
 }
 }
 .pickerStyle(.palette)
 .paletteSelectionEffect(.custom)
 })

 Menu("") {
 Picker("Flags", selection: $selectedFlag) {
 ForEach(flags) { flag in
 Label(flag.title, systemImage: "flag")
 .tint(flag.color)
 .tag(flag)
 }
 }
 .pickerStyle(.palette)
 .paletteSelectionEffect(.symbolVariant(.slash))
 })
 }
 }
 */
