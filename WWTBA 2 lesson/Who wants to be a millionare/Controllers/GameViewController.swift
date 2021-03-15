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
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    weak var gameSessionDelegate: GameSession?

    init(gameSession: GameSession){
        super.init(nibName: nil, bundle: nil)
        self.gameSessionDelegate = gameSession
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func startGame() {
        let questions = Game.difficulty == .easy ? QuestionStandartStrategy.shared.getData() : QuestionRandomStrategy.shared.getData()
        let gameSession = GameSession(questions: questions)
        Game.session = gameSession
        self.gameSessionDelegate = gameSession
        gameData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
    }
   
    
    private func gameData() {
        guard let gameSession = gameSessionDelegate else { return }
        let currentQuestionIndex = gameSession.correctAnswer
        let questions = gameSession.questions
        if currentQuestionIndex < questions.count {
            let question = questions[currentQuestionIndex]
            
            scoreLabel.text = " №\(currentQuestionIndex + 1)"
            questionLabel.text = question.text
            answerA.backgroundColor = .white
            answerB.backgroundColor = .white
            answerC.backgroundColor = .white
            answerD.backgroundColor = .white
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
        let alertController = UIAlertController(title: "Внимание", message: "Вы проиграли. Начните новую игру.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Начать новую игру", style: .default) {
            (action) -> Void in self.startGame()
        })
        self.present(alertController, animated: true, completion: nil)
    }
    
    func answerTapped(sender: UIButton!) {
        guard let gameSession = gameSessionDelegate else { return }
        let currentQuestionIndex = gameSession.correctAnswer
        let questions = gameSession.questions

        if currentQuestionIndex < questions.count &&
            sender.titleLabel?.text == questions[currentQuestionIndex].correctAnswer {
            sender.backgroundColor = .green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.correctAnswer()
            }
        }
        else {
            sender.backgroundColor = .red
            lose()
        }
    }
}


