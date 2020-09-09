//
//  ViewController.swift
//  PlayCards
//
//  Created by Сергей Борисов on 09.09.2020.
//  Copyright © 2020 Сергей Борисов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var touches = 0 {
        //абсерверы - наблюдатели
        didSet{
            touchesLabel.text = "Попыток: \(touches)"
        }
    }
    
    
    let emojiCollection = ["1","🐷","🦁","🐷","1","🦁"]
    
    
    func flipCard(emodji:String, button:UIButton)  {
        if button.currentTitle == emodji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
            
        }else {
            button.setTitle(emodji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBOutlet weak var touchesLabel: UILabel!
    
    @IBAction func cardButtonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender){
            flipCard(emodji: emojiCollection[buttonIndex], button: sender)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

