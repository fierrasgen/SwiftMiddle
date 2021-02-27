//
//  GameViewController.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 24.02.2021.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func questionA(_ sender: Any) {
        self.answerTapped(sender: sender as? UIButton)
    }
    @IBAction func questionB(_ sender: Any) {
        self.answerTapped(sender: sender as? UIButton)
    }
    @IBAction func questionC(_ sender: Any) {
        self.answerTapped(sender: sender as? UIButton)
    }
    @IBAction func questionD(_ sender: Any) {
        self.answerTapped(sender: sender as? UIButton)
    }
    
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var answerD: UIButton!
    
    
    var answers: [Question] = []
    var questions: [Question] = []
    weak var gameSessionDelegate: GameSession?
    
    init(questions: [Question], gameSession: GameSession){
        super.init(nibName: nil, bundle: nil)
        self.questions = questions
        self.gameSessionDelegate = gameSession
        //print("!!!!", gameSessionDelegate)
//        gameData()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //fatalError("init(coder:) has not been implemented")
    }
    
    func setValues(questions: [Question], gameSession: GameSession) {
        self.questions = questions
        self.gameSessionDelegate = gameSession
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameData()
    }
    
    
    private func gameData() {
       
        guard let gameSession = gameSessionDelegate else { return }
        let currentQuestionIndex = gameSession.correctAnswer
        if currentQuestionIndex < questions.count {
            let question = questions[currentQuestionIndex]
            questionLabel.text = question.text
            answerA.setTitle(question.answers[0], for: .normal)
            answerB.setTitle(question.answers[1], for: .normal)
            answerC.setTitle(question.answers[2], for: .normal)
            answerD.setTitle(question.answers[3], for: .normal)
            
            
            for(i, button) in [answerA, answerB, answerC, answerD].enumerated() {
                button?.setTitle(question.answers[i], for: .normal)
            }
        }  else  {
            win()
        }
    }


    private func correctAnswer(){
        gameSessionDelegate?.correctAnswer += 1
        gameData()
    }
    
    private func win(){
        Game.end(with: .win)
    }
    
    private func lose(){
        Game.end(with: .lose)
    }
    
    func answerTapped(sender: UIButton!) {
        guard let gameSession = gameSessionDelegate else { return }
        let currentQuestionIndex = gameSession.correctAnswer
        
        
        if currentQuestionIndex < questions.count &&
            sender.titleLabel?.text == questions[currentQuestionIndex].correctAnswer {
            sender.backgroundColor = .green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.correctAnswer()
            }
        }
            else {
                sender.backgroundColor = .red
            }
    }
}


