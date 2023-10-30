//
//  DataLoader.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import Foundation

protocol RemoteClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    
    func loadCourses(from url: URL) async -> Result
}
