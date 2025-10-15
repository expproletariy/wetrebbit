//
//  ContentView.swift
//  wetrebbit
//
//  Created by Uzdemir Dmitriy on 15.10.2025.
//

import SwiftUI
import AppKit

struct ContentView: View {
    @StateObject var bufferManager = BufferManager()
    var body: some View {
        VStack {
            List{
                ForEach(bufferManager.items) { item in
                    HStack {
                        Text(item.id.uuidString)
                        Spacer()
                        Text(item.data)
                        Spacer()
                        Text(item.timestamp.ISO8601Format())
                    }
                }
            }
            .padding()
            Button("Fetch") {
                try? bufferManager.fetch()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
