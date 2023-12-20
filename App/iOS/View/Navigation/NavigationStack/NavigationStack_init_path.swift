//
//  NavigationStack_init_path.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/20.
//

import SwiftUI

struct NavigationStack_init_path: View {

  @State var paths: [Int] = []
  @State var path = NavigationPath()

  var body: some View {
    NavigationStack(path: $paths) {
      Color(.systemGroupedBackground)
        .navigationTitle("[Int]")
        .navigationDestination(for: Int.self) {
          Color(.systemGroupedBackground)
            .navigationTitle($0.description)
        }
    }

    HStack {
      Text("path.count: \(paths.count)")

      Button("", systemImage: "trash") {
        paths.removeAll()
      }
      .disabled(paths.isEmpty)

      Button("", systemImage: "minus.circle") {
        paths.removeLast()
      }
      .disabled(paths.isEmpty)

      Button("", systemImage: "plus.circle") {
        paths.append(
          (paths.last ?? 0) + 1
        )
      }
    }
    .padding()

    Divider()

    NavigationStack(path: $path) {
      Color(.systemGroupedBackground)
        .navigationTitle("NavigationPath")
        .navigationDestination(for: Int.self) {
          Color(.systemGroupedBackground)
            .navigationTitle($0.description)
        }
    }

    HStack(spacing: 16) {
      Text("path.count: \(path.count)")

      Button("", systemImage: "trash") {
        while !path.isEmpty {
          path.removeLast()
        }
      }
      .disabled(path.isEmpty)

      Button("", systemImage: "minus.circle") {
        path.removeLast()
      }
      .disabled(path.isEmpty)

      Button("", systemImage: "plus.circle") {
        path.append(
          Int.random(in: 0...100)
        )
      }
    }
    .font(.body)
    .padding()
  }
}

#Preview {
  NavigationStack_init_path()
}
