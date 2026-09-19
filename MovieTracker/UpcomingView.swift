//
//  sourcecode.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 18/09/2026.
//

import SwiftUI

struct UpcomingView: View {
    let viewModel = ViewModel()
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                switch
                    viewModel.upcomingStatus
                {
                case .notStarted:
                    EmptyView()
                case .fetching:
                    ProgressView()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                case .success:
                    VerticalListView(titles: viewModel.upcomingMovies, canDelete: false)
                case let .failed(underlyingError):
                    Text(underlyingError.localizedDescription)
                        .errorMessage()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            .task {
                await viewModel.getUpcomingMovies()
            }
        }
    }
}

#Preview {
    UpcomingView()
}
