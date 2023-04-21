//
//  CardWithEmojiAndLabel.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 20.04.2023.
//

import UIKit

public class CardProperties {
    
    var circleBackgound: UIColor
    let emoji: String
    let cardName: String

    init(circleColor: UIColor, emoji: String, cardName: String) {
        self.circleBackgound = circleColor
        self.emoji = emoji
        self.cardName = cardName
    }
}
