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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstTeamCard = CardWithRoundImage(circleColor: circle1, emoji: emoji1, teamName: teamName1)
        
        let secondTeamCard = CardWithRoundImage(circleColor: circle2, emoji: emoji2, teamName: teamName2)
        
        let firstTeam = Teams().chooseRandomTeamCard()
        var secondTeam = Teams().chooseRandomTeamCard()
        
        guard (firstTeam.cardName != secondTeam.cardName)
        else {
            repeat {secondTeam = Teams().chooseRandomTeamCard()}
            while  firstTeam.cardName != secondTeam.cardName
            return
        }
        
        firstTeamCard.drowCard(context: firstTeam)
        secondTeamCard.drowCard(context: secondTeam)
    }
    
}

