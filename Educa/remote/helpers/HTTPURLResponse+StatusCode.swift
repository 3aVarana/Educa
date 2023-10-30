//
//  HTTPURLResponse+StatusCode.swift
//  Educa
//
//  Created by Victor Arana on 10/30/23.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    var isOK: Bool {
        return self.statusCode == HTTPURLResponse.OK_200
    }
}
