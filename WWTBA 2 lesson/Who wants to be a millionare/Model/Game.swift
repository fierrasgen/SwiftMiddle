//
//  Game.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 24.02.2021.
//

import Foundation

enum GameResultState {
    case win
    case lose
}


class Game {
    static var session: GameSession?
    private static let resultsCaretaker = ResultsCaretaker()
    static var difficulty: Difficulty = .easy
    

    private (set) static var results: [GameResults] = {
        return resultsCaretaker.loadResults()
    }() {
        didSet {
            resultsCaretaker.saveResults(results: results)
        }
    }
    
    static func end(with state: GameResultState) {
        if let session = Game.session {
            let gameResult = GameResults(date: session.date, correctAnswersCount: session.correctAnswer ,score: session.score)
            results.append(gameResult)
        }
        Game.session = nil
    }
    
    static func clearResults() {
        results = []
    }
}

class GameSession {
    var date: Date = Date()
    var correctAnswer: Int = 0
    var questions: [Question]
    var answers: [Question] = []
    var score: Int = 0
    
    init(questions: [Question]) {
        self.questions = questions
    }
}
