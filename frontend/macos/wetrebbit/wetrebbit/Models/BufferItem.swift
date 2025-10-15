//
//  BufferItem.swift
//  wetrebbit
//
//  Created by Uzdemir Dmitriy on 15.10.2025.
//

import Foundation

struct BufferItem: Identifiable {
    var id: UUID = UUID()
    var timestamp: Date = Date()
    var data: String = ""
}
