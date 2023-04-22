//
//  CategoriesViewController.swift
//  CrocodileApp
//
//  Created by Evgeniia Maksimova on 22.04.2023.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var categoriesCard1View: UIView!
    @IBOutlet weak var categoriesCard1TeamNameLabel: UILabel!
    @IBOutlet weak var categoriesCard1CustomView: UIView!
    @IBOutlet weak var categoriesCard1EmogiLabel: UILabel!
    
    @IBOutlet weak var categoriesCard2View: UIView!
    @IBOutlet weak var categoriesCard2TeamNameLabel: UILabel!
    @IBOutlet weak var categoriesCard2CustomView: UIView!
    @IBOutlet weak var categoriesCard2EmogiLabel: UILabel!
    
    @IBOutlet weak var categoriesCard3View: UIView!
    @IBOutlet weak var categoriesCard3TeamNameLabel: UILabel!
    @IBOutlet weak var categoriesCard3CustomView: UIView!
    @IBOutlet weak var categoriesCard3EmogiLabel: UILabel!
    
    @IBOutlet weak var categoriesCard4View: UIView!
    @IBOutlet weak var categoriesCard4TeamNameLabel: UILabel!
    @IBOutlet weak var categoriesCard4CustomView: UIView!
    @IBOutlet weak var categoriesCard4EmogiLabel: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstCategoryCard = CardWithRoundImage(circle: categoriesCard1CustomView, emoji: categoriesCard1EmogiLabel, cardName: categoriesCard1TeamNameLabel, card: categoriesCard1View)
        
        let secondCategoryCard = CardWithRoundImage(circle: categoriesCard2CustomView, emoji: categoriesCard2EmogiLabel, cardName: categoriesCard2TeamNameLabel, card: categoriesCard2View)
        
        let thirdCategoryCard = CardWithRoundImage(circle: categoriesCard3CustomView, emoji: categoriesCard3EmogiLabel, cardName: categoriesCard3TeamNameLabel, card: categoriesCard3View)
        
        let fourthCategoryCard = CardWithRoundImage(circle: categoriesCard4CustomView, emoji: categoriesCard4EmogiLabel, cardName: categoriesCard4TeamNameLabel, card: categoriesCard4View)
        
        let firscCategory = Categories().chooseRandomCatgoryCard()
        var secondCategory = Categories().chooseRandomCatgoryCard()
        let thirdCategory = Categories().chooseRandomCatgoryCard()
        let fourthCategory = Categories().chooseRandomCatgoryCard()
        

        
        firstCategoryCard.drowCard(context: firscCategory)
        secondCategoryCard.drowCard(context: secondCategory)
    
    }
}
