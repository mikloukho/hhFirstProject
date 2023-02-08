//
//  Profile.swift
//  hhFirstProject
//
//  Created by Mikhail Kolin on 01.02.2023.
//

import Foundation

struct Profile: Codable {
    typealias ID = String
    
    let id: ID
    let name: String
}

extension Profile: CustomDebugStringConvertible {
    var debugDescription: String {
            return "id: \(id), name: \(name)"
        }
}
