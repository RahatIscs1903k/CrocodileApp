//
//  GameViewController.swift
//  CrocodileApp
//
//  Created by Марк Райтман on 23.04.2023.
//

import UIKit

class GameViewController: UIViewController {
    
    //MARK: - Outlets
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //M ARK: - Actions
    @IBAction func reset(_ sender: UIButton) {
        // Создаем UIAlertController
        let alertController = UIAlertController(title: "Заголовок", message: "Сообщение", preferredStyle: .alert)
        
        // Создаем действие (кнопку) "OK"
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            
            print("Нажата кнопка OK")
        }
        
        // Добавляем действие на UIAlertController
        alertController.addAction(okAction)
        
        // Отображаем UIAlertController на экране
        present(alertController, animated: true, completion: nil)
    }
}
