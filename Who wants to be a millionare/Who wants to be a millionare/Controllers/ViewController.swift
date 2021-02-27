//
//  ViewController.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 24.02.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func playButton(sender: UIButton!){
        let questions = QuestionForPerson.shared.getData() 
        let gameSession = GameSession(questionsCount: questions.count)
        Game.session = gameSession
        
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
        gameVC.setValues(questions: questions, gameSession: gameSession)

        self.present(gameVC, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

