//
//  GridRow_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/gridrow
struct GridRow_init: View {

  var body: some View {
    Grid {
      GridRow {
        Color.clear
          .gridCellUnsizedAxes([.horizontal, .vertical])
        ForEach(1..<4) { column in
          Text("C\(column)")
        }
      }
      ForEach(1..<4) { row in
        GridRow {
          Text("R\(row)")
          ForEach(1..<4) { _ in
            Circle().foregroundStyle(.mint)
          }
        }
      }
    }
  }
}

#Preview {
  GridRow_init()
}
