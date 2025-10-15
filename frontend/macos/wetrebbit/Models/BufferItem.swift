//
//  BufferItem.swift
//  wetrebbit
//
//  Created by Uzdemir Dmitriy on 15.10.2025.
//

import Foundation

struct BufferItem: Identifiable {
    let id: UUID = UUID()
    let timestamp: Date = Date()
    let data: String = ""
}
