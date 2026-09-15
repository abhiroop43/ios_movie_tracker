//
//  sourcecode.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 12/09/2026.
//

import Foundation
import SwiftUI

enum Constants {
    static let homeString = "Home"
    static let upcomingString = "Upcoming"
    static let searchString = "Search"
    static let downloadsString = "Downloads"
    static let playString = "Play"
    static let trendingMovieString = "Trending Movies"
    static let trendingTVString = "Trending TV"
    static let topRatedMovieString = "Top Rated Movies"
    static let topRatedTVString = "Top Rated TV"

    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let searchIconString = "magnifyingglass"
    static let downloadsIconString = "arrow.down.to.line"

    static let testTitleURL = "https://image.tmdb.org/t/p/w600_and_h900_face/tN799oUR0f1gUKDYdMNrDaY7I51.jpg"
    static let testTitleURL2 = "https://image.tmdb.org/t/p/w600_and_h900_face/4tTrW9dXCByS5wt2pXVWb58zNjz.jpg"
    static let testTitleURL3 = "https://image.tmdb.org/t/p/w600_and_h900_face/uRxrNXQWkHoENm3nwVOZDYSCx2F.jpg"
    
    static let posterURLStart = "https://image.tmdb.org/t/p/w600_and_h900_face"
    
    static func addPosterPath(to titles: inout[Title]) {
        for index in titles.indices {
            if let path = titles[index].posterPath {
                titles[index].posterPath = Constants.posterURLStart + path
            }
        }
    }
}

extension Text {
    func ghostButton() -> some View {
        frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.buttonBorder, lineWidth: 5)
            }
    }
}
