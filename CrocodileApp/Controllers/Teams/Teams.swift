//
//  Teams.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 20.04.2023.
//

import UIKit

class Teams {
    public var teams = [
        CardProperties(circleColor: UIColor(#colorLiteral(red: 0.9887679219, green: 0.7098553777, blue: 0.7292196155, alpha: 1)), emoji: "🤠", cardName: "Ковбои", cardColor: UIColor.white),
        CardProperties(circleColor: UIColor(#colorLiteral(red: 1, green: 0.677408874, blue: 0.9359813929, alpha: 1)), emoji: "🍔", cardName: "Стройняшки", cardColor: UIColor.white),
        CardProperties(circleColor: UIColor(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), emoji: "🦞", cardName: "Дотеры", cardColor: UIColor.white),
        CardProperties(circleColor: UIColor(#colorLiteral(red: 0.668413341, green: 0.6760755181, blue: 0.9721799493, alpha: 1)), emoji: "🐊", cardName: "Красавчики", cardColor: UIColor.white),
        CardProperties(circleColor: UIColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), emoji: "🦊", cardName: "Лисички", cardColor: UIColor.white),
        CardProperties(circleColor: UIColor(#colorLiteral(red: 0.644867897, green: 0.9899758697, blue: 0.8370278478, alpha: 1)), emoji: "🐀", cardName: "Сплетницы", cardColor: UIColor.white),
        CardProperties(circleColor: UIColor(#colorLiteral(red: 0.4124863612, green: 0.6273378536, blue: 0.8249727224, alpha: 1)), emoji: "💃", cardName: "Красотки", cardColor: UIColor.white)
    ]
    
    func chooseRandomTeamCard() -> CardProperties {
        return teams.randomElement() ?? CardProperties( circleColor: UIColor.black, emoji: "💩", cardName: "Разработчики", cardColor: UIColor.white)
    }
}
