//
//  ViewController.swift
//  Who wants to be a millionare
//
//  Created by Alexander Novikov on 24.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func playButton(sender: UIButton!){
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
        self.present(gameVC, animated: true, completion: nil)
    }
    
    @IBAction func settingsButton(_ sender: Any) {
    }
    
    
    @IBAction func addQuestion(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

