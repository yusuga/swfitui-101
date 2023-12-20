//
//  PhotosPicker_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import PhotosUI

/// - SeeAlso: https://developer.apple.com/documentation/photokit/photospicker
private struct PhotosPicker_init: View {

  @State var selectedItems: [PhotosPickerItem] = []

  var body: some View {
    PhotosPicker(
      selection: $selectedItems,
      matching: .images
    ) {
      Text("Select Multiple Photos")
    }
  }
}

#Preview {
  PhotosPicker_init()
}
