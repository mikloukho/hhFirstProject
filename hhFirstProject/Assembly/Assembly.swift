//
//  Assembly.swift
//  hhFirstProject
//
//  Created by Heads Hands on 27.01.2023.
//privat extention what

import Foundation

final class Assembly {
    enum DateFormat: String {
        case yyMMdd = "yy MM dd"
        case HHmmss = "HH mm ss"
    }
    
    func dateFormatter(format: DateFormat) -> DateFormatterProtocol {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter
    }
}
