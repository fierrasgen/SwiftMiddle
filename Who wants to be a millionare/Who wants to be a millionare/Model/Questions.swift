//
//  Questions.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 24.02.2021.
//

import Foundation

struct Question {
    let id: Int
    let text: String
    let correctAnswer: String
    let answers: [String]
    var corAnswIndex: Int? {
        return answers.firstIndex(of: correctAnswer)
    }
}

class QuestionForPerson{
    
    static var shared = QuestionForPerson()
    
    func getData() -> [Question] {
        let questions: [Question] = [
            Question(id: 1, text: "Какую фамилию носил главный герой поэмы А. Твардовского?",
                     correctAnswer: "Тёркин",
                     answers: ["Теркин", "Петров", "Иванов", "Киркоров"]),
            Question(id: 2, text: "Что в конце XIX века было основным товаром на Лубянской площади в Москве во время Введенской ярмарки?",
                     correctAnswer: "Сани",
                     answers: ["Метелка", "Сани", "Леденцы", "Планшеты"]),
            Question(id: 3, text: "Как называют звезду, которая указала волхвам место рождения Христа?",
                     correctAnswer: "Вифлеемская",
                     answers: ["Сириус", "Петровская", "Вифлеемская", "Полярная"]),
            Question(id: 4, text: "Где, если верить пословице, любопытной Варваре нос оторвали?",
                     correctAnswer: "На Базаре",
                     answers: ["В Саду", "в Бане", "В метро", "На базаре"]),
            Question(id: 5, text: "Какой знак восточного гороскопа следует за знаком Дракона?",
                     correctAnswer: "Змея",
                     answers: ["Петух", "Змея", "Павлин", "Бык"]),
            Question(id: 6, text: "На какой день недели приходится первый день Нового 2002 года?",
                     correctAnswer: "Вторник",
                     answers: ["Вторник", "Среда", "Пятница", "Суббота"]),
            Question(id: 7, text: "Какое из этих украшений можно встретить на новогодней ёлке?",
                     correctAnswer: "Бусы",
                     answers: ["Кольца", "Бусы", "Подвеска", "Сережка"]),
            Question(id: 8, text: "31    Каким предметом китайцы стараются не пользоваться в преддверии Нового года, чтобы не разрушить счастья?",
                     correctAnswer: "Нож",
                     answers: ["Нож", "Ложка", "Вилка", "Ножницы"])
        ]
        return questions
    }
}
