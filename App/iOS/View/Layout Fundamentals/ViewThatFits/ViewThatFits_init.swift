//
//  ViewThatFits_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/viewthatfits
private struct ViewThatFits_init: View {

  var body: some View {
    VStack(spacing: 32) {
      UploadProgressView(uploadProgress: 0.75)
        .frame(maxWidth: 200)
      UploadProgressView(uploadProgress: 0.75)
        .frame(maxWidth: 100)
      UploadProgressView(uploadProgress: 0.75)
        .frame(maxWidth: 50)
    }
  }
}

#Preview {
  ViewThatFits_init()
}

private struct UploadProgressView: View {

  var uploadProgress: Double

  var body: some View {
    ViewThatFits(in: .horizontal) {
      HStack {
        Text("\(uploadProgress.formatted(.percent))")
        ProgressView(value: uploadProgress)
          .frame(width: 100)
      }
      ProgressView(value: uploadProgress)
        .frame(width: 100)
      Text("\(uploadProgress.formatted(.percent))")
    }
  }
}
