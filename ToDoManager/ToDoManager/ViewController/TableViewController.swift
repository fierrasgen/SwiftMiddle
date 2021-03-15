//
//  TableViewController.swift
//  ToDoManager
//
//  Created by Alexander Novikov on 10.03.2021.
//

import UIKit

class TableViewController: UITableViewController {

    var currentTask: Task?
    var tableTasks: [Task] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTasks()
        setupBarButton()
    }

    

    private func loadTasks() {
        if currentTask == nil { currentTask = TaskStorage.shared.getMainTask() }
        
        if let currentTask = currentTask {
            tableTasks = currentTask.openSubTasks()
        }
    }
    
    private func setupBarButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "plus"),
            landscapeImagePhone: nil, style: .plain,
            target: self, action: #selector(addTapped)
        )
    }
    
    @objc func addTapped() {
        self.showNewTaskAlert()
    }
}
    
    extension TableViewController {
        private func setupTableView() {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: ToDoTableViewCell.reuseIdentifier, bundle: nil), forCellReuseIdentifier: "TaskCell")
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return tableTasks.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! ToDoTableViewCell
            
            cell.configure(with: tableTasks[indexPath.row])
            
            return cell
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            guard let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "TableViewController") as? TableViewController else { return }

            vc.currentTask = tableTasks[indexPath.row]
            vc.title = "\(tableTasks[indexPath.row].text)"
            
            navigationController?.pushViewController(vc, animated: true)
        }
        
        func tableView(_ tableView: UITableViewController, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableView.automaticDimension
        }
        
        func tableView(_ tableView: UITableViewController, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                TaskStorage.shared.removeTask(by: tableTasks[indexPath.row].id)
                tableTasks.remove(at: indexPath.row)
            }
        }
    }
 
