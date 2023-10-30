//
//  RemoteDataLoader.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import Foundation

class RemoteDataLoader {
    private let url: URL
    private let client: RemoteClient
    
    init(url: URL, client: RemoteClient) {
        self.url = url
        self.client = client
    }
    
    enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
}

extension RemoteDataLoader: CourseLoader {
    typealias Result = CourseLoader.Result
    
    func loadCourses() async -> Result {
        let result = await client.loadCourses(from: url)
        switch result {
        case let .success((data, response)):
            return map(data, from: response)
        default:
            return .failure(Error.connectivity)
        }
    }
    
    private func map(_ data: Data, from response: HTTPURLResponse) -> Result {
        do {
            let items = try CourseItemsMapper.map(data, from: response)
            return .success(items)
        } catch {
            return .failure(error)
        }
    }
    
}
