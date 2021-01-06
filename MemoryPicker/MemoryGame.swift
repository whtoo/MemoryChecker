//
//  MemoryGame.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards : Array<Card>
    
    func index(choosenCard : Card) -> Int {
        var idx = 0
        for card in cards {
            if card.id == choosenCard.id {
                return idx
            }
            idx += 1
        }
        return 0
    }
    
    mutating func choose(card : Card) {
        print("card choose: \(card)")
        let choosenIdx = self.index(choosenCard: card)
        self.cards[choosenIdx].isFaceUp = !self.cards[choosenIdx].isFaceUp
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
