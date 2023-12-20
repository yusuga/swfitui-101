//
//  TimelineView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/timelineview
struct TimelineView_init: View {

  let startDate = Date()

  var body: some View {
    TimelineView(.periodic(from: startDate, by: 1)) { context in
//      AnalogTimerView(date: context.date)
      Text("text")
    }
  }
}

#Preview {
  TimelineView_init()
}
