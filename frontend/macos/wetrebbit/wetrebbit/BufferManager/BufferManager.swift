//
//  BufferFetcher.swift
//  wetrebbit
//
//  Created by Uzdemir Dmitriy on 15.10.2025.
//

import Foundation
import AppKit
internal import Combine

class BufferManager: ObservableObject {
    @Published var items: [BufferItem] = []
    @Published var isLoading: Bool = false
    init() {
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(pasteboardDidChange),
                name: NSPasteboard.didChangeNotification,
                object: nil
            )
    }
    
    deinit {
            NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func pasteboardDidChange() {
        updatePasteboardContent()
    }
    
    private func updatePasteboardContent() {
        if let content = NSPasteboard.general.string(forType: .string) {
            var item = BufferItem()
            item.data = content
            add(item)
        }
    }

    func fetch() throws {
        items = [BufferItem(), BufferItem(), BufferItem()]
    }
    func add(_ item: BufferItem) {
        items.append(item)
    }
}
