//
//  Item.swift
//  FlowFlicker
//
//  Created by Ahmad Qasim on 2/19/24.
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
