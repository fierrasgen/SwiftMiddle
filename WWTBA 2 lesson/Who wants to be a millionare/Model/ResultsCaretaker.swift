//
//  ResultsCaretaker.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 24.02.2021.
//

import Foundation
import UIKit

final class ResultsCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "results"
    
    func saveResults(results: [GameResults]) {
        do {
            let data = try self.encoder.encode(results)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func loadResults() -> [GameResults] {
        guard let data = UserDefaults.standard.data(forKey: key) else {
            return []
        }
        do {
            return try self.decoder.decode([GameResults].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}




