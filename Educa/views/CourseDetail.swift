//
//  CourseDetail.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import SwiftUI

struct CourseDetail: View {
    let course: Course
    
    var body: some View {
        VStack {
            Text("Course: \(course.name)")
            Text("Code: \(course.code)")
        }
        .navigationBarTitle(course.name)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetail(course: Course(name: "Functional Programming", code: "SIS-345", parallel: 2))
    }
}
