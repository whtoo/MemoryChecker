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
    
    @ViewBuilder
    private func body(for size: CGSize) ->  some View {
        if card.isFaceUp || !card.isMatched {
            ZStack {
                    Pie(startAngle: Angle(degrees: 0),endAngle: Angle(degrees: 270)).padding(5).opacity(0.4)
                    Text(card.content)
                }.font(Font.system(size: fontSize(for: size)))
            .cardify(isFaceUp: card.isFaceUp)
        }
       
    }
    
    private func fontSize(for size: CGSize) -> CGFloat  {
        min(size.width, size.height) * 0.7
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(isFaceUp: true, isMatched: false, content: "👻",id: 0)).foregroundColor(.blue)
    }
}
