//
//  DataStorage.swift
//  hhFirstProject
//
//  Created by Mikhail Kolin on 01.02.2023.
//

import Foundation

protocol DataStorage: RawRepresentable {
    associatedtype Value
    func save(value: Value, key: String)
    func value(key: String) -> Value?
}
