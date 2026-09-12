//
//  ContentView.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 12/09/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                Text("Home")
            }
            Tab("Upcoming", systemImage: "play.circle") {
                Text("Upcoming")
            }
            Tab("Search", systemImage: "magnifyingglass") {
                Text("Search")
            }
            Tab("Downloads", systemImage: "arrow.down.to.line") {
                Text("Downloads")
            }
        }
    }
}

#Preview {
    ContentView()
}
