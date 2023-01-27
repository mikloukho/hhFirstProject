//
//  MagicFormatter.swift
//  hhFirstProject
//
//  Created by Heads Hands on 27.01.2023.
//

import Foundation

protocol DateFormatterProtocol {
    func string(from: Date) -> String
}

extension DateFormatter: DateFormatterProtocol {}
