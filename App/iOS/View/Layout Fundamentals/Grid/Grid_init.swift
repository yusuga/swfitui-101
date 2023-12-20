//
//  Grid_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/grid
struct Grid_init: View {
  var body: some View {
    GroupBox {
      Grid {
        GridRow {
          Text("Hello")
          Image(systemName: "globe")
        }
        GridRow {
          Image(systemName: "hand.wave")
          Text("World")
        }
      }
    }

    GroupBox {

      Grid {
        GridRow {
          Text("Hello")
          Image(systemName: "globe")
        }
        Divider()
        GridRow {
          Image(systemName: "hand.wave")
          Text("World")
        }
      }
    }
    
    GroupBox {
      Grid {
        GridRow {
          Text("Hello")
          Image(systemName: "globe")
        }
        Divider()
          .gridCellUnsizedAxes(.horizontal)
        GridRow {
          Image(systemName: "hand.wave")
          Text("World")
        }
      }
    }

    GroupBox {
      Grid {
        GridRow {
          Text("Row 1")
          ForEach(0..<2) { _ in Color.red }
        }
        GridRow {
          Text("Row 2")
          ForEach(0..<5) { _ in Color.green }
        }
        GridRow {
          Text("Row 3")
          ForEach(0..<4) { _ in Color.blue }
        }
      }
    }
  }
}

#Preview {
  List {
    Grid_init()
  }
}
