//
//  AlertExtension.swift
//  ToDoManager
//
//  Created by Alexander Novikov on 12.03.2021.
//

import Foundation
import UIKit

extension TableViewController {
    func showNewTaskAlert() {
        let alert = UIAlertController(title: "Добавить задачу", message: "", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Задача..."
        }
        
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
        
        alert.addAction(UIAlertAction(title: "Добавить", style: .default, handler: { [weak alert, weak self] (_) in
            guard let self = self else { return }
            let textField = alert?.textFields![0]
            
            let taskText = textField?.text ?? ""
            let newTask = Task(text: taskText)
        
            if let currentTask = self.currentTask {
                TaskStorage.shared.addTask(newTask, for: currentTask)
                self.tableTasks.append(newTask)
            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
