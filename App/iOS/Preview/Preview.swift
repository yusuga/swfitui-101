//
//  Preview.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/17.
//

import SwiftUI

private struct PreviewView: View {

  var body: some View {
    Text("Hello, World!")
  }
}

#Preview {
  PreviewView()
}

#Preview("Name") {
  PreviewView()
}
