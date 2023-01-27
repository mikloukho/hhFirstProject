//
//  Assembly+Formatters.swift
//  hhFirstProject
//
//  Created by Heads Hands on 27.01.2023.
//

import Foundation

extension Assembly {
    var yyyyMMdd_dateFormatter: DateFormatterProtocol {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd"
        return dateFormatter
    }
}
