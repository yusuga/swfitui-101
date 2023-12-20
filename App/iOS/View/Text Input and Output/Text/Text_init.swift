//
//  Text_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/text
struct Text_init: View {

  var body: some View {
    Text("apple", tableName: nil, bundle: nil, comment: nil)

    Text(LocalizedStringResource("pencil"))

    Text("Text")

    Text(verbatim: "apple")

    Text(attributedString)

    Text(Date(timeIntervalSinceNow: -3600)...Date())

    Text(DateInterval(start: Date(timeIntervalSinceNow: -3600), end: Date()))

    Text(Date(), format: Date.FormatStyle(date: .numeric, time: .omitted))

    Text(NSNumber(value: 1234567.89), formatter: numberFormatter)

    Text(Image(.newspaper))

    Text(
      timerInterval: Date.now...Date(timeInterval: 12 * 60, since: .now),
      pauseTime: Date.now + (12 * 60 - 5),
      countsDown: true,
      showsHours: true
    )
  }
}

#Preview {
  List {
    Text_init()
  }
}

private var attributedString: AttributedString {
  var attributedString = AttributedString("AttributedString")
  attributedString.font = .title
  attributedString.foregroundColor = .red
  return attributedString
}

private var numberFormatter: NumberFormatter {
  let formatter = NumberFormatter()
  formatter.numberStyle = .currency
  return formatter
}
