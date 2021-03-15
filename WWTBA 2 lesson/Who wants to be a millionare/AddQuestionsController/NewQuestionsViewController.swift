//
//  NewQuestionsViewController.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 14.03.2021.
//

import UIKit

class NewQuestionsViewController: UIViewController {
    
    
    @IBOutlet weak var addQuestion: UITextField!
    @IBOutlet weak var addAnswerA: UITextField!
    @IBOutlet weak var addAnswerB: UITextField!
    @IBOutlet weak var addAnswerC: UITextField!
    @IBOutlet weak var addAnswerD: UITextField!
    @IBOutlet weak var addRightAnswer: UITextField!
    
    
    @IBAction func addNewQuestion(_ sender: Any) {
        questions.append(Question(id: questions.count + 1, text: addQuestion.text ?? "",
                                  correctAnswer: addRightAnswer.text ?? "",
                                  answers: [addAnswerA.text ?? "", addAnswerB.text ?? "", addAnswerC.text ?? "", addAnswerD.text ?? ""]))
        print(questions)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
