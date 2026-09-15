//
//  sourcecode.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 12/09/2026.
//

import SwiftUI

struct HomeView: View {
    
    let viewModel = ViewModel()
    @State private var titleDetailPath = NavigationPath()

    var body: some View {
        GeometryReader { geo in
            ScrollView {
                switch viewModel.homeStatus {
                case .notStarted:
                    EmptyView()
                case let .failed(error):
                    Text("Error: \(error.localizedDescription)")
                case .fetching:
                    ProgressView()
                        .frame(width: geo.size.width, height: geo.size.height)
                case .success:
                    LazyVStack {
                        AsyncImage(url: URL(string: viewModel.heroTitle.posterPath ?? "")) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .overlay(
                                    LinearGradient(stops: [Gradient.Stop(color: .clear, location: 0.8),
                                                           Gradient.Stop(color: .gradient, location: 1)],
                                                   startPoint: .top,
                                                   endPoint: .bottom)
                                )
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: geo.size.width, height: geo.size.height * 0.85)
                        
                        HStack {
                            Button {} label: {
                                Text(Constants.playString)
                                    .ghostButton()
                            }
                            Button {} label: {
                                Text(Constants.downloadsString)
                                    .ghostButton()
                            }
                        }
                        
                        HorizontalListView(header: Constants.trendingMovieString, titles: viewModel.trendingMovies)
                        HorizontalListView(header: Constants.trendingTVString, titles: viewModel.trendingTV)
                        HorizontalListView(header: Constants.topRatedMovieString, titles: viewModel.topRatedMovies)
                        HorizontalListView(header: Constants.topRatedTVString, titles: viewModel.topratedTV)
                    }
                }

            }
            .task {
                await viewModel.getTitles()
            }
        }
    }
}

#Preview {
    HomeView()
}
