//
//  ContentView.swift
//  Mem2
//
//  Created by Albert Jordan on 6/3/20.
//  Copyright © 2020 Albert Jordan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        return HStack  {
            ForEach (0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
    }

    struct CardView: View {
        
        var isFaceUp: Bool
        var body: some View {
             ZStack {
                if isFaceUp {
                    RoundedRectangle(cornerRadius: 10.0).stroke()
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    Text("Hello There, World!")
                } else {
                    RoundedRectangle(cornerRadius: 10.0).fill()
                    
                }
                
        
            }
            // .padding()
            .foregroundColor(Color.yellow)
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


