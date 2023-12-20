//
//  LocalAuthenticationView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI
import LocalAuthentication

#if os(macOS)

/// - SeeAlso: https://developer.apple.com/documentation/localauthentication/localauthenticationview
private struct LocalAuthenticationView_init: View {
  var body: some View {
    LocalAuthenticationView(
      "Continue with Touch ID",
      reason: Text("Access sandcastle competition designs")
    ) { result in
      switch result {
      case .success:
        print("Authorized")
      case .failure(let error):
        print("Authorization failed: \(error)")
      }
    }
    .controlSize(.large)
  }
}

#Preview {
  LocalAuthenticationView_init()
}

#endif
