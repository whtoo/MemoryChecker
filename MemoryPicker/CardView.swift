//
//  CardView.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI

struct CardView: View {
    var isFaceUp : Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill()
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("😁")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(isFaceUp: true)
    }
}
