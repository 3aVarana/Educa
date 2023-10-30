//
//  URLSessionClient.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import Foundation

class URLSessionRemoteClient: RemoteClient {
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    private struct UnexpectedValuesRepresentation: Error {}
    
    func loadCourses(from url: URL) async -> RemoteClient.Result {
        do {
            let (data, response) = try await session.data(from: url)
            
            guard let response = response as? HTTPURLResponse else {
                return .failure(UnexpectedValuesRepresentation())
            }
            return .success((data, response))
        } catch {
            return .failure(error)
        }
    }
    
}
