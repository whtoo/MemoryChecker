//
//  Array+Only.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/7.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
