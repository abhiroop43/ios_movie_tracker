//
//  DownloadsView.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 19/09/2026.
//

import SwiftUI
import SwiftData

struct DownloadsView: View {
    @Query(sort: \Title.title) var savedTitles: [Title]
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            if savedTitles.isEmpty {
                Text("No Downloads")
                    .padding()
                    .font(.title3)
                    .bold()
            } else {
                VerticalListView(titles: savedTitles, canDelete: true)
                    .navigationTitle(Constants.downloadsString)
            }
        }
    }
}

#Preview {
    DownloadsView()
}
