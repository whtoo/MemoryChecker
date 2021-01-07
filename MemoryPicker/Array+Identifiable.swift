//
//  Array+Identifiable.swift
//  MemoryPicker
//
//  Created by blitz on 2021/1/7.
//

import Foundation

extension Array where Element : Identifiable {
    func firstIndex(matching : Element) -> Int? {
        for idx in self.indices {
            let ele = self[idx]
            if ele.id == matching.id {
                return idx
            }
        }
        return nil
    }
}
