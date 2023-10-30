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
                getCourseCellView(for: course)
                    .listRowSeparator(.hidden)
                    .padding(.bottom, 16)
                    .listRowBackground(Color.clear)
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("My Courses")
            .scrollContentBackground(.hidden)
            .navigationBarItems(trailing: Button(action: {}, label: {
                NavigationLink(destination: CalendarView()) {
                    Image(systemName: "calendar")
                }
            }))
        }
    }
    
    func getCourseCellView(for course: Course) -> some View {
        ZStack(alignment: .leading) {
            NavigationLink(destination: CourseDetailView(viewModel: CourseDetailViewModel())) { }
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
                courseImage
            }
            .padding()
        }
    }
    
    var courseImage: some View {
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
