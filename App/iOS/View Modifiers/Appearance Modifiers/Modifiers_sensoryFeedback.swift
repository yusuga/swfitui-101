//
//  Modifiers_sensoryFeedback.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/10/09.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/view/sensoryfeedback(_:trigger:)
struct Modifiers_sensoryFeedback: View {

  @State var trigger1 = false
  @State var trigger2 = false

  var body: some View {
    List {
      Section {
        ForEach(SensoryFeedbackType.allCases, id: \.self) {
          SensoryFeedbackButton(sensoryFeedbackType: $0)
        }
      }
      Section {
        Button("sensoryFeedback(trigger:_:)", action: { trigger1.toggle() })
          .sensoryFeedback(trigger: trigger1, { _, _ in .impact })

        Button("sensoryFeedback(_:trigger:condition:)", action: { trigger2.toggle() })
          .sensoryFeedback(.impact, trigger: trigger2, condition: { _, _  in true })
      }
    }
  }
}

private struct SensoryFeedbackButton: View {

  let sensoryFeedbackType: SensoryFeedbackType
  @State private var trigger = false

  var body: some View {
    Button(sensoryFeedbackType.rawValue) { trigger.toggle() }
      .sensoryFeedback(sensoryFeedbackType.value, trigger: trigger)
  }
}

private enum SensoryFeedbackType: String, CaseIterable {

  case success
  case warning
  case error
  case selection
  case increase
  case decrease
  case start
  case stop
  case alignment
  case levelChange
  case impact
  case impactLight
  case impactMedium
  case impactHeavy
  case impactRigid
  case impactSolid
  case impactSoft

  var value: SensoryFeedback {
    switch self {
    case .success:
        .success
    case .warning:
        .warning
    case .error:
        .error
    case .selection:
        .selection
    case .increase:
        .increase
    case .decrease:
        .decrease
    case .start:
        .start
    case .stop:
        .stop
    case .alignment:
        .alignment
    case .levelChange:
        .levelChange
    case .impact:
        .impact
    case .impactLight:
        .impact(weight: .light, intensity: 1)
    case .impactMedium:
        .impact(weight: .medium, intensity: 1)
    case .impactHeavy:
        .impact(weight: .heavy, intensity: 1)
    case .impactRigid:
        .impact(flexibility: .rigid, intensity: 1)
    case .impactSolid:
        .impact(flexibility: .solid, intensity: 1)
    case .impactSoft:
        .impact(flexibility: .soft, intensity: 1)
    }
  }
}

#Preview {
  Modifiers_sensoryFeedback()
}
