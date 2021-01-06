//
//  ContentView.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI

struct ContentView: View {
    var viewModel : EmojiMemoryGame
    
    var body: some View {
        Grid(items: viewModel.cards) { card in
            CardView(card: card).onTapGesture(perform: {
                viewModel.choose(card: card)
            })
        }.foregroundColor(.orange).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
