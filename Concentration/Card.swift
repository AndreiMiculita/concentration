//
//  Card.swift
//  Concentration
//
//  Created by A. Miculita on 14/02/2020.
//  Copyright © 2020 A. Miculita. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    init(identifier: Int) {
        self.identifier = identifier
    }
}
