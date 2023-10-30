//
//  CourseItemsMapper.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import Foundation

class CourseItemsMapper {
    
    static func map(_ data: Data, from response: HTTPURLResponse) throws -> [Course] {
        guard response.isOK, let courses = try? JSONDecoder().decode([Course].self, from: data) else {
            throw RemoteDataLoader.Error.invalidData
        }
        
        return courses
    }
}
