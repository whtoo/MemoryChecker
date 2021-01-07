//
//  EmojiMemoryGame.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI



class EmojiMemoryGame : ObservableObject {
    @Published private var model : MemoryGame<String> = createMemoryGame()
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","😊"]
        return MemoryGame<String>(numberOfPairsCards: emojis.count) { (index) -> String in
            emojis[index]
        }
    }
    //var objectWillChange: ObservableObjectPublisher
    
    // MARK: - Access to the model
    
    var cards : Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card : MemoryGame<String>.Card) {
        //objectWillChange.send()
        model.choose(card: card)
    }
    
}

