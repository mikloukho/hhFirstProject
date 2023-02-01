//
//  Assembly+DataStorage.swift
//  hhFirstProject
//
//  Created by Mikhail Kolin on 01.02.2023.
//

import Foundation

extension Assembly {
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
