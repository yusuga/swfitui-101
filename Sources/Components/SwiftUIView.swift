//
//  SwiftUIView.swift
//  
//
//  Created by yusuga on 2023/08/15.
//

import SwiftUI

public struct SwiftUIView: View {

  let text: String

  public var body: some View {
    Text("abce")
  }

  public init(text: String) {
    self.text = text
  }
}

//#Preview {
//  SwiftUIView()
//}

//struct SwiftUIView2: View {
//
//  let text5: String
//
//  var body: some View {
//    VStack {
//      Image(systemName: "globe")
//        .imageScale(.large)
//        .foregroundStyle(.tint)
//      Text("Hello, world!8a12")
//    }
//    .padding()
//  }
//}
