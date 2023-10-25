//
//  CourseDetail.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import SwiftUI

struct CourseDetailView: View {
    @ObservedObject var viewModel = CourseDetailViewModel()
    
    func getSquareView(_ title: String, label: String) -> some View {
        VStack(alignment: .center, spacing: 8) {
            Text(title)
                .font(.system(.body, design: .monospaced))
            Text(label)
                .font(.system(.caption))
        }
        .padding()
    }
    
    var body: some View {
        List {
            Section {
                VStack(alignment: .center) {
                    Text(viewModel.course.name)
                        .multilineTextAlignment(.center)
                        .font(.system(.title3, design: .monospaced))
                    HStack {
                        getSquareView("Code", label: viewModel.course.code)
                        getSquareView("Parallel", label: "\(viewModel.course.parallel)")
                        getSquareView("Alumni", label: "35")
                    }

                }
            }
            Text("Dailys")
                .font(.system(.title3, design: .monospaced))
            ForEach(viewModel.dailyCourses, id: \.self) { dailyCourse in
                ZStack(alignment: .leading) {
                    NavigationLink(destination: DailyClassView(), label: {})
                    VStack(alignment: .leading, spacing: 8) {
                        Text(dailyCourse.date)
                            .font(.system(.body))
                        Text("caption")
                            .font(.system(.caption))
                    }
                }
                .padding(.vertical, 8)
            }
            .listRowSeparator(.hidden)
        }
        .navigationBarTitle("Course")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView(viewModel: CourseDetailViewModel())
    }
}
