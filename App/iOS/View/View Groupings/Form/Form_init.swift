//
//  FormExample.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/16.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/form
private struct Form_init: View {
  
  @State private var notifyMeAbout: NotifyMeAboutType = .directMessages
  @State private var playNotificationSounds: Bool = false
  @State private var sendReadReceipts: Bool = false
  @State private var profileImageSize: ProfileImageSize = .medium
  
  var body: some View {
    NavigationStack {
      Form {
        Section(header: Text("Notifications")) {
          Picker("Notify Me About", selection: $notifyMeAbout) {
            Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
            Text("Mentions").tag(NotifyMeAboutType.mentions)
            Text("Anything").tag(NotifyMeAboutType.anything)
          }
          Toggle("Play notification sounds", isOn: $playNotificationSounds)
          Toggle("Send read receipts", isOn: $sendReadReceipts)
        }
        Section(header: Text("User Profiles")) {
          Picker("Profile Image Size", selection: $profileImageSize) {
            Text("Large").tag(ProfileImageSize.large)
            Text("Medium").tag(ProfileImageSize.medium)
            Text("Small").tag(ProfileImageSize.small)
          }
          Button("Clear Image Cache") {}
        }
      }
    }
  }
}

#Preview {
  Form_init()
}

extension Form_init {
  
  enum NotifyMeAboutType {
    case directMessages
    case mentions
    case anything
  }
  
  enum ProfileImageSize {
    case large
    case medium
    case small
  }
}
