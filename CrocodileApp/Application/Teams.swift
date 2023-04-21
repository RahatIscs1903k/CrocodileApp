//
//  Teams.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 20.04.2023.
//

import UIKit

class Teams {
    public var teams = [
        CardProperties(circleColor: UIColor.green, emoji: "🤠", cardName: "Ковбои"),
        CardProperties(circleColor: UIColor.purple, emoji: "🍔", cardName: "Стройняшки"),
        CardProperties(circleColor: UIColor.red, emoji: "🦞", cardName: "Дотеры"),
        CardProperties(circleColor: UIColor.black, emoji: "🐊", cardName: "Красавчики"),
        CardProperties(circleColor: UIColor.yellow, emoji: "🦊", cardName: "Лисички"),
        CardProperties(circleColor: UIColor.blue, emoji: "🐀", cardName: "Сплетницы")
    ]
    
    func chooseRandomTeamCard() -> CardProperties {
       return teams.randomElement() ?? CardProperties( circleColor: UIColor.black, emoji: "💩", cardName: "Разработчики")
    }
}