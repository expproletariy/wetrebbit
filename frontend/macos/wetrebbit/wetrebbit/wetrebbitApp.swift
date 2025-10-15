//
//  wetrebbitApp.swift
//  wetrebbit
//
//  Created by Uzdemir Dmitriy on 15.10.2025.
//

import SwiftUI

@main
struct wetrebbitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        MenuBarExtra {
            ContentView()
        } label: {
            Label("wetrebbit", systemImage: "list.bullet.rectangle")
        }
        .menuBarExtraStyle(.window)
    }
}
