//
//  ViewController.swift
//  Concentration
//
//  Created by A. Miculita on 12/02/2020.
//  Copyright © 2020 A. Miculita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game = Concentration()
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻", "🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of:sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            print("cardnumber = \(cardNumber)")
        } else {
            print("not in cardbuttons")
        }
//        flipCard(withEmoji: "👻", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

