//
//  ProgressView_progressViewStyle.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/10/08.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/view/progressviewstyle(_:)
private struct ProgressView_progressViewStyle: View {

  @State var progress = 0.5
  let workoutDateRange = Date()...Date().addingTimeInterval(5 * 60)

  var body: some View {
    VStack {
      ProgressView(value: progress)
      Button("More") { progress += 0.05 }
    }
    
    ProgressView()
    
    ProgressView(timerInterval: workoutDateRange) {
      Text("Workout")
    }
    
    VStack {
      ProgressView(value: 0.25) { Text("25% progress") }
      ProgressView(value: 0.75) { Text("75% progress") }
    }
    .progressViewStyle(PinkBorderedProgressViewStyle())
    
    ProgressView(value: progress)
      .progressViewStyle(.circular)
  }
}

private struct PinkBorderedProgressViewStyle: ProgressViewStyle {

  func makeBody(configuration: Configuration) -> some View {
    ProgressView(configuration)
      .padding(4)
      .border(.pink, width: 3)
      .cornerRadius(4)
  }
}

#Preview {
  List {
    ProgressView_progressViewStyle()
  }
}
