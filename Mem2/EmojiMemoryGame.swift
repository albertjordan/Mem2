//
//  SwiftUIView.swift
//  Mem2
//
//  Created by Albert Jordan on 1/30/21.
//  Copyright © 2021 Albert Jordan. All rights reserved.
//

import SwiftUI

let deck : Array<String> = ["👻", "🕷"]

func cardFactory(index i: Int) -> String {
    return deck[i]
}


class EmojiMemoryGame {
    
    private  var model: MemoryGame<String>  // make the model private..  give access to cards via cards variablec
    
    //Mark: - access to the model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    init() {
        model = MemoryGame<String>(numberOfPairOfCard: deck.count
                                      , cardFactory: {i in deck[i]})
         
    }
    
    
    // MARK: - intents.
    
    func chooseCard(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
     
    
}

