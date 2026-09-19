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
            Tab(Constants.homeString, systemImage: Constants.homeIconString) {
                HomeView()
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIconString) {
                UpcomingView()
            }
            Tab(Constants.searchString, systemImage: Constants.searchIconString) {
                SearchView()
            }
            Tab(Constants.downloadsString, systemImage: Constants.downloadsIconString) {
                DownloadsView()
            }
        }
        .onAppear {
            if let config = APIConfig.shared {
                print(config.tmdbAPIKey)
                print(config.tmdbBaseURL)
            }
        }
    }
}

#Preview {
    ContentView()
}
