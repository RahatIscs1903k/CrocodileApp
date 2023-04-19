//
//  ViewController.swift
//  CrocodileApp
//
//  Created by Challenge on 16.04.2023.
//

import UIKit

class TeamViewController: UIViewController {
    
    @IBOutlet weak var circle1: UIView!
    
    @IBOutlet weak var circle2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        circle1.layer.cornerRadius = 28
        circle2.layer.cornerRadius = 28
    }
}

