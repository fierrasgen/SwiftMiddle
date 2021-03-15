//
//  ResultsTableViewController.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 26.02.2021.
//

import UIKit

class ResultsTableViewController: UITableViewController {

//    private var reuseCellIdentifier = "ResultTableViewCell"
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.results.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ResultTableViewCell.reuseIdentifier, for: indexPath) as! ResultTableViewCell

        let record = Game.results[indexPath.row]
        cell.dateLabel.text = record.date.description
        cell.scoreLabel.text = "score: \(record.score)"
        
        return cell
    }
}
