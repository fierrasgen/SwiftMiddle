//
//  CreateQuestionStrategy.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 13.03.2021.
//

import Foundation

protocol CreateQuestionStrategy {
    func getData() -> [Question]
}
