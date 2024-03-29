//
//  Model.swift
//  Sentence AI
//
//  Created by Valid Mohammadi on 28.03.2024.
//

import Foundation

struct Message: Identifiable {
    var id: UUID = .init()
    var content: String
    var isUser: Bool
}
