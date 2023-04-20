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
        
        let teams = createTeamPool()
        
        guard let firstTeam = teams.randomElement() else { return print("произошла ошибка")}
        
        guard var secondTeam = teams.randomElement() else { return print("произошла ошибка")}
        
        while firstTeam.teamName == secondTeam.teamName {
            secondTeam = teams.randomElement() ?? Team(teamBackgroundColor: UIColor.black, teamEmoji: "💩", teamName: "Разработчики")
        }
        
        generateTeamPicture(circle: circle1, emoji: emoji1, teamName: teamName1, team: firstTeam)
        generateTeamPicture(circle: circle2, emoji: emoji2, teamName: teamName2, team: secondTeam)
    }
    
    func createTeamPool() -> Array<Team> {
        var teams = Array<Team>()
        
        let teamCowboys = Team(teamBackgroundColor: UIColor.green, teamEmoji: "🤠", teamName: "Ковбои")
        
        let teamSkinny = Team(teamBackgroundColor: UIColor.purple, teamEmoji: "🍔", teamName: "Стройняшки")
        
        let teamDota = Team(teamBackgroundColor: UIColor.green, teamEmoji: "🦞", teamName: "Дотеры")
        
        let teamHandsome = Team(teamBackgroundColor: UIColor.green, teamEmoji: "🐊", teamName: "Красавчики")
        
        let teamFoxes = Team(teamBackgroundColor: UIColor.green, teamEmoji: "🦊", teamName: "Лисички")
        
        let teamGossipGirls = Team(teamBackgroundColor: UIColor.green, teamEmoji: "🐀", teamName: "Сплетницы")
        
        teams.append(teamCowboys)
        teams.append(teamSkinny)
        teams.append(teamDota)
        teams.append(teamHandsome)
        teams.append(teamFoxes)
        teams.append(teamGossipGirls)
        
        return teams
    }
    
    func generateTeamPicture(circle: UIView, emoji: UILabel, teamName: UILabel, team: Team) {
        
        let CORNER_RADIUS : CGFloat = 28
        circle.layer.cornerRadius = CORNER_RADIUS
        circle.backgroundColor = team.teamBackgroundColor
        emoji.text = team.teamEmoji
        teamName.text = team.teamName
    }
}

