//
//  MemoryGame.swift
//  Mem2
//
//  Created by Albert Jordan on 1/30/21.
//  Copyright © 2021 Albert Jordan. All rights reserved.
//

import Foundation


struct MemoryGame<CardContent> {
    
    var cards: Array<CardContent>
    
    func chose(card: CardContent){
        print("chose card: \(card)")
    }
    
    
    var isFaceUp: Bool
    var isMatched: Bool
    var content:CardContent
}
