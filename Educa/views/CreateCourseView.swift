//
//  CreateCourseView.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import SwiftUI

struct CreateCourseView: View {
    var body: some View {
        VStack {
            Text("Form to create a course...")
        }
        .navigationTitle("Add a new course")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        CreateCourseView()
    }
}
