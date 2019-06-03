//
//  Card.swift
//  Concentration
//
//  Created by Rahimi, Meena Nichole (Student) on 5/21/19.
//  Copyright © 2019 Rahimi, Meena Nichole (Student). All rights reserved.
//

import Foundation

struct Card: Hashable {
    
    func hash(into hasher: inout Hasher) { hasher.combine(identifier)}
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
