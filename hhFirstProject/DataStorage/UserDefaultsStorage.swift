//
//  UserDefaultsStorage.swift
//  hhFirstProject
//
//  Created by Mikhail Kolin on 01.02.2023.
//

import Foundation

final class UserDefaultsStorage {
    private let encoder: JSONEncoder
    private let decoder: JSONDecoder
    private let userDefaults: UserDefaults
    init(encoder: JSONEncoder, decoder: JSONDecoder, userDefaults: UserDefaults) {
        self.encoder = encoder
        self.decoder = decoder
        self.userDefaults = userDefaults
    }
}

extension UserDefaultsStorage: DataStorage {
    func save<Value, Key>(value: Value, key: Key) where Value : Codable, Key : RawRepresentable, Key.RawValue == String {
        guard let data = try? encoder.encode(value) else {
            return
        }
        userDefaults.set(data, forKey: key.rawValue)
    }
    
    func value<Value, Key>(key: Key) -> Value? where Value : Codable, Key : RawRepresentable, Key.RawValue == String {
        guard let data = userDefaults.data(forKey: key.rawValue) else {
            return nil
        }
        return try? decoder.decode(Value.self, from: data)
    }
}
