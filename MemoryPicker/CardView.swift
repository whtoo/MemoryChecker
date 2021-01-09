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
    
    @ViewBuilder func body(for size: CGSize) ->  some View {
            ZStack {
                
                    if card.isFaceUp {
                        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 1)
                        Pie(startAngle: Angle(degrees: 0),endAngle: Angle(degrees: 270)).padding(5).opacity(0.4)
                        Text(card.content)
                    } else {
                        if !card.isMatched {
                            RoundedRectangle(cornerRadius: 10.0).fill()
                        }
                    }
                
            }.font(Font.system(size: min(size.width,size.height) * 0.75))
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(isFaceUp: true, isMatched: false, content: "👻",id: 0)).foregroundColor(.blue)
    }
}
