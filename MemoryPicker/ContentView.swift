//
//  ContentView.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
                ForEach(0..<3,content: {
                    index in
                    CardView(isFaceUp: false)
                })
        }.foregroundColor(.orange).padding().font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
