//
//  BufferFetcher.swift
//  wetrebbit
//
//  Created by Uzdemir Dmitriy on 15.10.2025.
//

import Foundation
internal import Combine

class BufferManager: ObservableObject {
    @Published var items: [BufferItem] = []
    @Published var isLoading: Bool = false
    func fetch() throws {
        items = [BufferItem(), BufferItem(), BufferItem()]
    }
    func add(_ item: BufferItem) {
        items.append(item)
    }
}
