//
//  ToDoTableViewCell.swift
//  ToDoManager
//
//  Created by Alexander Novikov on 10.03.2021.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    private var task: Task?
    public static let reuseIdentifier = "TaskCell"
    
    @IBOutlet weak var nameTask: UILabel!
    @IBOutlet weak var countTask: UILabel!
    
    @IBAction func addTask(_ sender: UIBarButtonItem) {
        guard let task = task else { return }
        TaskStorage.shared.modifyTask(with: task)
    }
    
    public func configure(with task: Task) {
        self.task = task
        nameTask.text = task.text
        countTask.text = "1"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
}
