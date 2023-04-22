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
    

    
    var firstCategoryCard: CardWithRoundImage
    var secondCategoryCard: CardWithRoundImage
    var thirdCategoryCard: CardWithRoundImage
    var fourthCategoryCard: CardWithRoundImage

    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let firstCategory = Categories().chooseRandomCatgoryCard()
        var secondCategory = Categories().chooseRandomCatgoryCard()
        let thirdCategory = Categories().chooseRandomCatgoryCard()
        let fourthCategory = Categories().chooseRandomCatgoryCard()
    
         firstCategoryCard = CardWithRoundImage(circle: categoriesCard1CustomView, emoji: categoriesCard1EmogiLabel, cardName: categoriesCard1TeamNameLabel, card: categoriesCard1View)
        
         secondCategoryCard = CardWithRoundImage(circle: categoriesCard2CustomView, emoji: categoriesCard2EmogiLabel, cardName: categoriesCard2TeamNameLabel, card: categoriesCard2View)
        
         thirdCategoryCard = CardWithRoundImage(circle: categoriesCard3CustomView, emoji: categoriesCard3EmogiLabel, cardName: categoriesCard3TeamNameLabel, card: categoriesCard3View)
        
         fourthCategoryCard = CardWithRoundImage(circle: categoriesCard4CustomView, emoji: categoriesCard4EmogiLabel, cardName: categoriesCard4TeamNameLabel, card: categoriesCard4View)

        firstCategoryCard.drowCard(context: firstCategory)
        secondCategoryCard.drowCard(context: secondCategory)
        thirdCategoryCard.drowCard(context: thirdCategory)
        fourthCategoryCard.drowCard(context: fourthCategory)
        
        func changeCheckbox(card: CardWithRoundImage) {
            card.isChecked = !card.isChecked
        }
        
    }
    
    @IBAction func onclickOnFirstButton(_ sender: Any) {
        
    }
    
    @IBAction func onclickOnSecondButton(_ sender: Any) {
        secondCategoryCard.isChecked = !secondCategoryCard.isChecked
    }
    
    
    @IBAction func onclickOnThirdButton(_ sender: Any) {
        thirdCategoryCard.isChecked = !thirdCategoryCard.isChecked
    }
    
    @IBAction func onclickOnFourthButton(_ sender: Any) {
        fourthCategoryCard.isChecked = !fourthCategoryCard.isChecked
    }
    
    
}
