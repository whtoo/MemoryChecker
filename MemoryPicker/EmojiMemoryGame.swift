//
//  EmojiMemoryGame.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI



class EmojiMemoryGame {
    private var model : MemoryGame<String> = createMemoryGame()
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","😊"]
        return MemoryGame<String>(numberOfPairsCards: emojis.count) { (index) -> String in
            emojis[index]
        }
    }
    
    var cards : Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card : MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}

