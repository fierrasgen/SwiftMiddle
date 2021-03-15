//
//  QuestionStandartStrategy.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 13.03.2021.
//

import Foundation

class QuestionStandartStrategy: CreateQuestionStrategy {
    static var shared = QuestionStandartStrategy()
    func getData() -> [Question] {
        return questions
    }
}
    
    

