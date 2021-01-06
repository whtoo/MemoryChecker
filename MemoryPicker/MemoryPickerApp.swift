//
//  MemoryPickerApp.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI

@main
struct MemoryPickerApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
