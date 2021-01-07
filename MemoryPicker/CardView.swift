//
//  CardView.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI

struct CardView: View {
    var card : MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) ->  some View {
        
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 1)
                    Text(card.content)
                } else {
                    RoundedRectangle(cornerRadius: 10.0).fill()
                }
                
            }.font(Font.system(size: min(size.width,size.height) * 0.75))
       
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(isFaceUp: true, isMatched: false, content: "👻",id: 0)).foregroundColor(.blue)
    }
}
