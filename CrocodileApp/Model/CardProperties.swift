//
//  CardWithEmojiAndLabel.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 20.04.2023.
//

import UIKit

public class CardProperties {
    let circleBackgound: UIColor
    let emoji: String
    let cardName: String
    let cardColor: UIColor

    init(circleColor: UIColor, emoji: String, cardName: String, cardColor: UIColor) {
        self.circleBackgound = circleColor
        self.emoji = emoji
        self.cardName = cardName
        self.cardColor = cardColor
    }
}
