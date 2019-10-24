//
//  ViewController.swift
//  WarCardGame
//
//  Created by Corentin Chateau on 23/10/2019.
//  Copyright © 2019 Corentin Chateau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScore: UILabel!
    
    @IBOutlet weak var rightScore: UILabel!
    
    var leftScoreValue = 0
    var rightScoreValue = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func resetTapped(_ sender: Any) {
        leftScoreValue = 0
        rightScoreValue = 0
        leftScore.text = String(leftScoreValue)
        rightScore.text = String(rightScoreValue)
        
    }
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        if leftNumber > rightNumber {
            leftScoreValue += 1
            leftScore.text = String(leftScoreValue)
        }
        
        if leftNumber < rightNumber {
            rightScoreValue += 1
            rightScore.text = String(rightScoreValue)
        }
        
        else {
            
        }
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
    }
}

