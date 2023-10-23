//
//  Course.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import Foundation

struct Course: Identifiable {
    let id = UUID()
    let name: String
    let code: String
    let parallel: Int
}
