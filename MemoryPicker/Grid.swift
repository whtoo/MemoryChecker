//
//  Grid.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/6.
//

import SwiftUI

struct Grid<Item,ItemView>: View {
    
    var items : [Item]
    
    var viewForItem : (Item) -> ItemView
    
    init(items: [Item],viewForItem:@escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
