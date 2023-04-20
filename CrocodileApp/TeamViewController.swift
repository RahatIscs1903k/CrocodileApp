//
//  ViewController.swift
//  CrocodileApp
//
//  Created by Challenge on 16.04.2023.
//

import UIKit

class TeamViewController: UIViewController {
    
    @IBOutlet weak var circle1: UIView!
    
    @IBOutlet weak var circle2: UIView!
    
    @IBOutlet weak var emoji1: UILabel!
    
    @IBOutlet weak var emoji2: UILabel!
    
    @IBOutlet weak var teamName1: UILabel!
    
    @IBOutlet weak var teamName2: UILabel!
    
    
    struct Team {
        let teamBackgroundColor: UIColor
        let teamEmoji: String
        let teamName: String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let teams = Array<Team>()
        
        let teamCowboys = Team(teamBackgroundColor: UIColor.green, teamEmoji: "🤠 ", teamName: "Ковбои")
        
        
        circle1.layer.cornerRadius = 28
        circle2.layer.cornerRadius = 28
        circle1.backgroundColor = teamCowboys.teamBackgroundColor
        emoji1.text = teamCowboys.teamEmoji
        teamName1.text = teamCowboys.teamName
    }
}

