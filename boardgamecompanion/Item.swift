//
//  Item.swift
//  boardgamecompanion
//
//  Created by Mauricio Cardozo on 19/08/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
