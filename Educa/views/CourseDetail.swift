//
//  CourseDetail.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import SwiftUI

struct CourseDetail: View {
    let course: Course
    
    func getSquareView(_ title: String) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
                .stroke()
            VStack {
                Text(title)
                    .font(.system(.title3, design: .monospaced))
            }
            .padding()
        }
    }
    
    func getSquareView(_ title: String, label: String) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
                .stroke()
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.system(.title3, design: .monospaced))
                Text(label)
                    .font(.system(.body))
            }
            .padding()
        }
    }
    
    var body: some View {
        ScrollView {
            getSquareView(course.name)
                .padding(.horizontal, 16)
                .padding(.bottom, 8)
            HStack {
                getSquareView("Code: ", label: course.code)
                getSquareView("Parallel: ", label: "\(course.parallel)")
            }
            .padding(.horizontal, 16)
        }
        .navigationBarTitle("Course")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var body2: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.gray)
                RoundedRectangle(cornerRadius: 8)
                    .stroke()
                VStack(alignment: .leading, spacing: 16) {
                    Text("Name:")
                        .font(.system(.title, design: .monospaced))
                    Text(course.name)
                    HStack(spacing: 32) {
                        VStack {
                            Text("Code:")
                                .font(.system(.title))
                            Text(course.code)
                        }
                        Spacer()
                        VStack {
                            Text("Parallel:")
                                .font(.system(.title))
                            Text("\(course.parallel)")
                        }
                    }
                }
                .padding()
            }
            .padding()
        }
        .navigationBarTitle("Course")
    }
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetail(course: Course(name: "Functional Programming", code: "SIS-345", parallel: 2))
    }
}
