//
//  Item.swift
//  TodoDemoApp
//
//  Created by Girish Chauhan on 24/03/25.
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
