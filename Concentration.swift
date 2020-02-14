//
//  Concentration.swift
//  Concentration
//
//  Created by A. Miculita on 14/02/2020.
//  Copyright © 2020 A. Miculita. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index:Int){
        
    }
    
    init(numberOfPairsOfCards: Int){
        for identifier in 0..<numberOfPairsOfCards {
            let card = Card(identifier: identifier)
            cards += [card, card]
        }
    }
}
