//
//  CardWithEmojiAndLablel.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 20.04.2023.
//

import UIKit

public class CardWithEmojiAndLabel {
    
    // fields
    var teamBackgroundColor: UIColor
    let teamEmoji: String
    let teamName: String

    init(teamBackgroundColor: UIColor, teamEmoji: String, teamName: String) {
        self.teamBackgroundColor = teamBackgroundColor
        self.teamEmoji = teamEmoji
        self.teamName = teamName
    }
}
