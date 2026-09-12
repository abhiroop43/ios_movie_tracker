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
                Text(Constants.homeString)
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIconString) {
                Text(Constants.upcomingString)
            }
            Tab(Constants.searchString, systemImage: Constants.searchIconString) {
                Text(Constants.searchString)
            }
            Tab(Constants.downloadsString, systemImage: Constants.downloadsIconString) {
                Text(Constants.downloadsString)
            }
        }
    }
}

#Preview {
    ContentView()
}
