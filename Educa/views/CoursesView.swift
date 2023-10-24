//
//  CoursesView.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import SwiftUI

struct CoursesView: View {
    @ObservedObject var viewModel = CoursesViewModel()
    let background = LinearGradient(colors: [.red, .red.opacity(0.8), .yellow.opacity(0.8)], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        NavigationView {
            List(viewModel.courses) { course in
                ZStack(alignment: .leading) {
                    NavigationLink(destination: CourseDetail(course: course)) { }
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.linearGradient(colors: [.green, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .shadow(color: .black, radius: 8, x: 4, y: 4)
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
                .listRowSeparator(.hidden)
                .backgroundStyle(.clear)
                .padding(.bottom, 16)
                .listRowBackground(Color.clear)
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Courses")
            .background(background.ignoresSafeArea())
            .scrollContentBackground(.hidden)
            .navigationBarBackground(.red)
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}

extension View {
  func navigationBarBackground(_ background: Color = .orange) -> some View {
    return self
      .modifier(ColoredNavigationBar(background: background))
  }
}

struct ColoredNavigationBar: ViewModifier {
  var background: Color
  
  func body(content: Content) -> some View {
    content
      .toolbarBackground(
        background,
        for: .navigationBar
      )
      .toolbarBackground(.visible, for: .navigationBar)
  }
}
