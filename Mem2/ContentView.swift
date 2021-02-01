//
//  ContentView.swift
//  Mem2
//
//  Created by Albert Jordan on 6/3/20.
//  Copyright © 2020 Albert Jordan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel : EmojiMemoryGame
    
    
    var body: some View {
        return HStack  {
            ForEach (viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.chooseCard(card: card)
                }
            }
        }
    }

    struct CardView: View {
        
        var card : MemoryGame<String>.Card
         
        var body: some View {
             ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: 10.0).stroke()
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    Text(card.content)
                } else {
                    RoundedRectangle(cornerRadius: 10.0).fill()
                    
                }
                
        
            }
            // .padding()
            .foregroundColor(Color.yellow)
             .padding(3.0)
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}


