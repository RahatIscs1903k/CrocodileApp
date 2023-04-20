//
//  Card.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 20.04.2023.
//

import UIKit

class CardWithRoundImage {
    var circleColor: UIView
    var emoji: UILabel
    var cardName: UILabel
    
    init(circleColor: UIView, emoji: UILabel, teamName: UILabel) {
        self.circleColor = circleColor
        self.emoji = emoji
        self.cardName = teamName
    }
    
    func drowCard(context: CardProperties) {
        self.circleColor.backgroundColor = context.circleBackgound
        self.emoji.text = context.emoji
        self.cardName.text = context.cardName
    }
}
