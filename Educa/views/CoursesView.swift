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
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(.systemBackground))
                            .shadow(color: .black, radius: 4, x: 4, y: 4)
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(.linearGradient(colors: [.black, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
                    }
                    HStack {
                        VStack(alignment: .leading, spacing: 16) {
                            Text(course.name)
                                .font(.system(.title2, design: .monospaced))
                            Text(course.code)
                                .font(.system(.title3))
                            Text("Par. \(course.parallel)")
                                .font(.system(.body))
                        }
                        image
                    }
                    .padding()
                }
                .listRowSeparator(.hidden)
                .backgroundStyle(.clear)
                .padding(.bottom, 16)
                .listRowBackground(Color.clear)
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Courses")
            .scrollContentBackground(.hidden)
        }
    }
    
    var image: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(.gray)
            RoundedRectangle(cornerRadius: 4)
                .stroke()
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .padding()
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
