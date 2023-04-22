//
//  Card.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 20.04.2023.
//

import UIKit

class CardWithRoundImage {
    var circle: UIView
    var emoji: UILabel
    var cardName: UILabel
    var card: UIView
    
    init(circle: UIView, emoji: UILabel, cardName: UILabel, card: UIView) {
        self.circle = circle
        self.emoji = emoji
        self.cardName = cardName
        self.card = card
    }
    
    func drowCard(context: CardProperties) {
        self.circle.backgroundColor = context.circleBackgound
        self.emoji.text = context.emoji
        self.cardName.text = context.cardName
        self.card.backgroundColor = context.cardColor
    }
}
