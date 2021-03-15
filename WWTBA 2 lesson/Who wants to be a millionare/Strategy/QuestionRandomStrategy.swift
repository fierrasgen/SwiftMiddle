//
//  QuestionRandomStrategy.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 13.03.2021.
//

import Foundation

class QuestionRandomStrategy: CreateQuestionStrategy {
    static var shared = QuestionRandomStrategy()
    func getData() -> [Question] {
        return questions.shuffled()
    }
}
    
