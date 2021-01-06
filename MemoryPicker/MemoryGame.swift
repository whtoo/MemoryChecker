//
//  MemoryGame.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards : Array<Card>
    
    func choose(card : Card) {
        print("card choose: \(card)")
    }
    
    init(numberOfPairsCards : Int,cardFactory : (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsCards {
            let content = cardFactory(pairIndex)
            cards.append(Card( content: content,id:pairIndex * 2))
            cards.append(Card( content: content,id:pairIndex * 2 + 1))
        }
    }
    
    struct Card : Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int

    }
}
