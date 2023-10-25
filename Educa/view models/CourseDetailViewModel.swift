//
//  CourseDetailViewModel.swift
//  Educa
//
//  Created by Victor Arana on 10/24/23.
//

import Foundation

class CourseDetailViewModel: ObservableObject {
    var course = Course(name: "Programación Orientada a objetos", code: "SIS-123", parallel: 2)
    @Published var dailyCourses = [DailyCourse]()
    
    init() {
        loadDailyCourses()
    }
    
    func loadDailyCourses() {
        dailyCourses = [
            DailyCourse(date: "Martes, 10 de octubre de 2023"),
            DailyCourse(date: "Viernes, 13 de octubre de 2023"),
            DailyCourse(date: "Martes, 17 de octubre de 2023"),
            DailyCourse(date: "Viernes, 20 de octubre de 2023"),
            DailyCourse(date: "Martes, 24 de octubre de 2023"),
            DailyCourse(date: "Viernes, 27 de octubre de 2023"),
            DailyCourse(date: "Martes, 31 de octubre de 2023")
        ]
    }
}
