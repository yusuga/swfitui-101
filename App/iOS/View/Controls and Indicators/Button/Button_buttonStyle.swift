//
//  Button_buttonStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

struct Button_buttonStyle: View {

  var body: some View {
    Button(action: emptyAction, label: { Text("automatic") })
      .buttonStyle(.automatic)
    Button(action: emptyAction, label: { Text("bordered") })
      .buttonStyle(.bordered)

#if os(macOS)
    if #available(macOS 14.0, *) {
      Button(action: emptyAction, label: { Text("accessoryBar") })
        .buttonStyle(.accessoryBar)
      Button(action: emptyAction, label: { Text("accessoryBarAction") })
        .buttonStyle(.accessoryBarAction)
    }
#endif

    Button(action: emptyAction, label: { Text("borderedProminent") })
      .buttonStyle(.borderedProminent)
    Button(action: emptyAction, label: { Text("borderless") })
      .buttonStyle(.borderless)

#if os(tvOS)
    Button(action: emptyAction, label: { Text("card") })
      .buttonStyle(.card)
    Button(action: emptyAction, label: { Text("link") })
      .buttonStyle(.link)
#endif

    Button(action: emptyAction, label: { Text("plain") })
      .buttonStyle(.plain)

    Button("MyButtonStyle", action: emptyAction)
      .buttonStyle(MyButtonStyle())

    Button("PrimitiveButtonStyleConfiguration", action: emptyAction)
      .buttonStyle(RedBorderedButtonStyle())
  }
}

#Preview {
  VStack(spacing: 16) {
    Button_buttonStyle()
  }
}

private struct MyButtonStyle: PrimitiveButtonStyle {

  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .onTapGesture {
        configuration.trigger()
      }
      .font(
        configuration.role == .cancel ? .title2.bold() : .title2)
      .foregroundColor(
        configuration.role == .destructive ? Color.red : nil)
  }
}

private struct RedBorderedButtonStyle: PrimitiveButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        Button(configuration) // init(_ configuration: PrimitiveButtonStyleConfiguration)
            .border(Color.red)
    }
}
