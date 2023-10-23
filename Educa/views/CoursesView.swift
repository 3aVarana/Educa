//
//  CoursesView.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import SwiftUI

struct CoursesView: View {
    @ObservedObject var viewModel = CoursesViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.courses) { course in
                ZStack(alignment: .leading) {
                    NavigationLink(destination: CourseDetail(course: course)) { }
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.green)
                    VStack(alignment: .leading, spacing: 16) {
                        Text(course.name)
                            .font(.system(.title2, design: .monospaced))
                        Text(course.code)
                            .font(.system(.title3))
                        Text("Par. \(course.parallel)")
                            .font(.system(.body))
                    }
                    .padding()
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Courses")
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
