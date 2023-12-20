//
//  ExampleList.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI
import Foundation

public struct ExampleList<V: View>: View {

  private let content: V

  public init(
    @ViewBuilder content: @escaping () -> V
  ) {
    self.content = content()
  }

  public var body: some View {
    ScrollView {
      VStack(spacing: 16) {
        content
      }
      .padding()
    }
//    .background(Color(.systemGroupedBackground))
  }
}

public struct ExampleSection<Content: View>: View {

  private let title: String?
  private let content: Content

  public init(
    _ title: String? = nil,
    @ViewBuilder content: @escaping () -> Content
  ) {
    self.title = title
    self.content = content()
  }

  public var body: some View {
    VStack(spacing: 16) {
      Text(title ?? "")
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.headline)
//        .foregroundColor(Color(.secondaryLabel))

      content
    }
  }
}

public struct ExampleView<V: View>: View {

  private let title: String?
  private let content: V

  public init(title: String? = nil, content: V) {
    self.title = title
    self.content = content
  }

  public var body: some View {
    GroupBox(
      content: {
        content
      },
      label: {
//        if let title {
//          Text(title)
//        } else {
          EmptyView()
//        }
      }
    )
    .groupBoxStyle(ExampleGroupBoxStyle())
  }
}

extension View {

  var isEmptyView: Bool {
    type(of: self) == EmptyView.self
  }

  var isNotEmptyView: Bool {
    !isEmptyView
  }
}

private struct ExampleGroupBoxStyle: GroupBoxStyle {

  func makeBody(configuration: Configuration) -> some View {
    let val = type(of: configuration.label)
    let result = "\(val)"
    let result2 = configuration.label.isEmptyView

    return VStack {
//      if configuration.label.isNotEmptyView {
        HStack {
//          configuration.label.font(.headline)
          Text("\(result), \(result2 ? "true" : "false")")
//          Text("\(type(of: configuration.label))")
//          configuration.label.font(.headline)
          Spacer()
        }
        .border(.red)
//      }
      configuration.content
//        .padding(.top, configuration.label.isNotEmptyView ? 20 : -8)
    }
    .border(.red)
    .padding()
    .background(
      RoundedRectangle(cornerRadius: 8, style: .continuous)
//        .fill(Color(.systemBackground))
    )
  }
}

#Preview(fileName()) {
  ExampleList {
    ExampleSection("Section 1") {
      ExampleView(
        title: "init(action:label:)",
        content: Button(action: emptyAction, label: { Text("Sign In") })
      )
      ExampleView(
        content: Button(action: emptyAction, label: { Text("Sign In") })
          .border(.red)
      )
    }
    ExampleSection("Section 2") {
      ExampleView(
        title: "init(action:label:)",
        content: Button(action: emptyAction, label: { Text("Sign In") })
      )
      ExampleView(
        title: "init(action:label:)2",
        content: Button(action: emptyAction, label: { Text("Sign In") })
      )
    }
    ExampleSection {
      ExampleView(
        title: "init(action:label:)",
        content: Button(action: emptyAction, label: { Text("Sign In") })
      )
      ExampleView(
        title: "init(action:label:)2",
        content: Button(action: emptyAction, label: { Text("Sign In") })
      )
    }
  }
}
