//
//  DifficultViewController.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 13.03.2021.
//

import UIKit

class DifficultViewController: UIViewController {
    
    @IBAction func difficultyControlChanged(_ sender: Any) {
        Game.difficulty = selectedDifficulty
    }
    
    @IBOutlet weak var difficultyControl: UISegmentedControl!
    
    private var selectedDifficulty: Difficulty {
        get {
            switch self.difficultyControl.selectedSegmentIndex {
            case 0:
                return .easy
            case 1:
                return .medium
            default:
                return .easy
            }
        }
        
        set {
            switch newValue {
            case .easy:
                self.difficultyControl.selectedSegmentIndex = 0
            case .medium:
                self.difficultyControl.selectedSegmentIndex = 1
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedDifficulty = Game.difficulty
    }
}
