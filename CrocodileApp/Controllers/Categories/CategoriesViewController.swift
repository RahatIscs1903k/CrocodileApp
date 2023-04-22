//
//  CategoriesViewController.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 22.04.2023.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var categoryCard1: UIView!
    @IBOutlet weak var categoryName1: UILabel!
    @IBOutlet weak var categoryCircle1: UIView!
    @IBOutlet weak var categoryEmoji1: UILabel!
    
    @IBOutlet weak var categoryCard2: UIView!
    @IBOutlet weak var categoryName2: UILabel!
    @IBOutlet weak var categoryCircle2: UIView!
    @IBOutlet weak var categoryEmoji2: UILabel!
    
    @IBOutlet weak var categoryCard3: UIView!
    @IBOutlet weak var categoryName3: UILabel!
    @IBOutlet weak var categoryCircle3: UIView!
    @IBOutlet weak var categoryEmoji3: UILabel!
    
    @IBOutlet weak var categoryCard4: UIView!
    @IBOutlet weak var categoryName4: UILabel!
    @IBOutlet weak var categoryCircle4: UIView!
    @IBOutlet weak var categoryEmoji4: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let firstCategoriesCard = CardWithRoundImage(circle: categoryCircle1, emoji: categoryEmoji1, cardName: categoryName1, card: categoryCard1)
       
        let secondCategoriesCard = CardWithRoundImage(circle: categoryCircle1, emoji: categoryEmoji1, cardName: categoryName1, card: categoryCard1)
        
        let thirdCategoriesCard = CardWithRoundImage(circle: categoryCircle1, emoji: categoryEmoji1, cardName: categoryName1, card: categoryCard1)
        
        let fourthCategoriesCard = CardWithRoundImage(circle: categoryCircle1, emoji: categoryEmoji1, cardName: categoryName1, card: categoryCard1)
        
        let firstTeam = Teams().chooseRandomTeamCard()
        var secondTeam = Teams().chooseRandomTeamCard()
        
        guard (firstTeam.cardName != secondTeam.cardName)
        else {
            repeat {secondTeam = Teams().chooseRandomTeamCard()}
            while  firstTeam.cardName != secondTeam.cardName
            return
        }
        
        firstCategoriesCard.drowCard(context: firstTeam)
        secondCategoriesCard.drowCard(context: secondTeam)
    
    }
}
