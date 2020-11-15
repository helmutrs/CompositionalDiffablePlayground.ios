//
//  ColorsSnapshot+Extension.swift
//  CompositionalDiffablePlayground
//
//  Created by Filip Němeček on 15/11/2020.
//

import UIKit

extension ColorsSnapshot {
    mutating func addRandomItems() {
        self.appendSections([0])
        
        var items = [UIColor]()
        for _ in 0...10 {
            items.append(UIColor.random())
        }
        self.appendItems(items)
    }
    
    static func random() -> ColorsSnapshot {
        var snapshot = ColorsSnapshot()
        snapshot.addRandomItems()
        return snapshot
    }
}
