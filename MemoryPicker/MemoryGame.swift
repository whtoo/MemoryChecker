//
//  MemoryGame.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import Foundation

struct MemeoryGame<CardContent> {
    var cards : Array<Card>
    
    func choose(card : Card) {
        print("card choose: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
