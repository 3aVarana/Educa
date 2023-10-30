//
//  LocalDataLoader.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import Foundation

class LocalDataLoader {
    
}

extension LocalDataLoader: CourseLoader {
    func loadCourses() async -> CourseLoader.Result {
        return .success([])
    }
    
}
