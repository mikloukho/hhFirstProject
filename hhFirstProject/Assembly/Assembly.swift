//
//  Assembly.swift
//  hhFirstProject
//
//  Created by Heads Hands on 27.01.2023.
//privat extention what

import Foundation

final class Assembly {
    private var encoder: JSONEncoder {
        JSONEncoder()
    }
    private var decoder: JSONDecoder {
        JSONDecoder()
    }
    var dataStorage: any DataStorage {
        UserDefaultsStorage(encoder: encoder, decoder: decoder, userDefaults: .standard)
    }
}
