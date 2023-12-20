//
//  Group_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/group
private struct Group_init: View {
  
  @State var isLoggedIn = false
  
  var body: some View {
    Group {
      Text("SwiftUI")
      Text("Combine")
      Text("Swift System")
    }
    .font(.headline)
    
    Group {
      if isLoggedIn {
        Text("Logout")
      } else {
        Text("Login")
      }
    }
    .navigationBarTitle("Start")
    
    VStack {
      Group {
        Text("1")
        Text("2")
        Text("3")
        Text("4")
        Text("5")
        Text("6")
        Text("7")
        Text("8")
        Text("9")
        Text("10")
      }
      Text("11")
    }
  }
}

#Preview {
  Group_init()
}
