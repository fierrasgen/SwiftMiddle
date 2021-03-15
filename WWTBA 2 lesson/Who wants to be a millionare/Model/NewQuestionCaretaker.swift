//
//  NewQuestionCaretaker.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 14.03.2021.
//

import Foundation
import UIKit

final class QuestionCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "newQuestions"
    
    func saveQuestions(newQuestions: [Question]) {
        do {
            let data = try self.encoder.encode(newQuestions)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func loadQuestions() -> [Question] {
        guard let data = UserDefaults.standard.data(forKey: key) else {
            return []
        }
        do {
            return try self.decoder.decode([Question].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}
