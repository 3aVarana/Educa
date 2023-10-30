//
//  CourseLoader.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import Foundation

protocol CourseLoader {
    typealias Result = Swift.Result<[Course], Error>
    
    func loadCourses() async -> Result
}
