//
//  CoursesViewModel.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import Foundation

class CoursesViewModel: ObservableObject {
    @Published var courses = [Course]()
    
    init() {
        loadCourses()
    }
    
    private func loadCourses() {
        courses = [
            Course(name: "Functional Programming", code: "SIS-135", parallel: 1),
            Course(name: "Object-Oriented Programming", code: "SIS-215", parallel: 2),
            Course(name: "Data Structures and Algorithms", code: "ING-310", parallel: 2),
        ]
    }
}

