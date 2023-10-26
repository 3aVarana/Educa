//
//  StudentListView.swift
//  Educa
//
//  Created by Victor Arana on 10/25/23.
//

import SwiftUI

struct StudentListView: View {
    @StateObject var viewModel = StudentListViewModel()
    @State private var isChecked: Bool = false
    
    var body: some View {
        List {
            Section {
                Text("Attendance")
                    .font(.system(.title3, design: .monospaced, weight: .bold))
                    .listRowSeparator(.hidden)
                Text("Friday 27, 2023")
                    .font(.system(.body, design: .monospaced, weight: .regular))
            }
            Section {
                ForEach(1..<20) { element in
                    Toggle(isOn: .constant(true), label: {
                        Text("Andres Arana \(element)")
                    })
                }
            }
        }
        .navigationTitle("Students")
    }
}

#Preview {
    NavigationView {
        StudentListView()
            .navigationBarTitleDisplayMode(.inline)
    }
}
