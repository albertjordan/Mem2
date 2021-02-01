//
//  MemoryGame.swift
//  Mem2
//
//  Created by Albert Jordan on 1/30/21.
//  Copyright © 2021 Albert Jordan. All rights reserved.
//

import Foundation


struct MemoryGame<CardContent> {
    
    var cards: Array<Card>    //define...
     
    init (numberOfPairOfCard: Int, cardFactory: (Int) -> CardContent ) {
        cards = Array<Card>()   // create the structure...
        for index in 0..<numberOfPairOfCard {
            let content = cardFactory(index)
            cards.append(Card(content: content, id: index*2))
            cards.append(Card(content: content, id: index*2+1))

        }
        cards.shuffle()
    }
    
    func choose(card: Card){
        print("chose card: \(card)")
    }
    
    
    struct Card: Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content:CardContent
        var id: Int
        
    }
}
