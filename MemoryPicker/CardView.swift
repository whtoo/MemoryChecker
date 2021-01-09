//
//  CardView.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI

struct CardView: View {
    var card : MemoryGame<String>.Card
    
    @State private var animatedBonusRemaining: Double = 0
    
    private func startBonusTimeAnimation() {
        animatedBonusRemaining = card.bonusRemaining
        withAnimation(.linear(duration: card.bonusTimeRemaining)) {
            animatedBonusRemaining = 0
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    @ViewBuilder
    private func body(for size: CGSize) ->  some View {
        if card.isFaceUp || !card.isMatched {
            ZStack {
                Group {
                    if card.isConsumingBonusTime {
                        Pie(startAngle: Angle(degrees: -90),endAngle: Angle(degrees: -animatedBonusRemaining*360-90))
                            .onAppear(perform: {
                                self.startBonusTimeAnimation()
                            })
                    } else {
                        Pie(startAngle: Angle(degrees: -90),endAngle: Angle(degrees: -card.bonusRemaining*360-90))
                    }
                }.padding(5).opacity(0.4)
                .transition(.identity)
                
                
                    Text(card.content).font(Font.system(size: fontSize(for: size)))
                        .rotationEffect(Angle.degrees(card.isMatched ? 360: 0))
                        .animation(card.isMatched ? Animation.linear(duration: 1.0).repeatForever(autoreverses: false) : .default)
                }
            .cardify(isFaceUp: card.isFaceUp)
            .transition(AnyTransition.scale)
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
