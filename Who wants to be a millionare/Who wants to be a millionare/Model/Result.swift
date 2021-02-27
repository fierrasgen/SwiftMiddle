//
//  Result.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 24.02.2021.
//

import Foundation


struct GameResults {
    let date: Date
    let correctAnswersCount: Int
    let score: Int
}

extension GameResults: Codable {}

typealias Memento = Date
