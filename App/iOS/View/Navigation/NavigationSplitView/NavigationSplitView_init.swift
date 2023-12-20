//
//  NavigationSplitView_init.swift
//  SwiftUI-101
//
//  Created by yusuga on 2023/08/18.
//

import SwiftUI

/// - SeeAlso: https://developer.apple.com/documentation/swiftui/navigationsplitview
private struct NavigationSplitView_init: View {

  @State private var model = EmployeeModel()
  @State private var employeeIds: Set<Employee.ID> = []

  var body: some View {
    NavigationSplitView {
      List(model.employees, selection: $employeeIds) { employee in
        Text(employee.name)
      }
    } detail: {
      EmployeeDetails(for: employeeIds)
    }
  }
}

#Preview {
  NavigationSplitView_init()
}

private struct EmployeeDetails: View {

  var selectedEmployeeIds: Set<Employee.ID>
  var body: some View {
    // 詳細の表示方法は仮定義です。実際の実装は異なる可能性があります
    ForEach(Array(selectedEmployeeIds), id: \.self) { id in
      Text("Employee ID: \(id.uuidString)")
    }
  }

  init(for selectedEmployeeIds: Set<Employee.ID>) {
    self.selectedEmployeeIds = selectedEmployeeIds
  }
}

private struct EmployeeModel {

  var employees: [Employee] = [
    Employee(id: UUID(), name: "John Doe"),
    Employee(id: UUID(), name: "Jane Smith")
  ]
}

private struct Employee: Identifiable {

    var id: UUID
    var name: String
}
