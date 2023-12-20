//
//  Text_DateStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text/datestyle
struct Text_DateStyle: View {

  let date = Date()

  var body: some View {
    LabeledContent("date") {
      Text(date, style: .date)
    }

    LabeledContent("offset") {
      Text(date, style: .offset)
    }

    LabeledContent("relative") {
      Text(date, style: .relative)
    }

    LabeledContent("time") {
      Text(date, style: .time)
    }

    LabeledContent("timer") {
      Text(date, style: .timer)
    }
  }
}

#Preview {
  List {
    Text_DateStyle()
  }
  .monospacedDigit()
}
