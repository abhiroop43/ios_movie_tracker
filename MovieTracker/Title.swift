//
//  sourcecode.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 12/09/2026.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable, Hashable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?

    static var previewTitles = [
        Title(id: 1, title: "Beetlejuice", name: "Beetlejuice", overview: "A movie about Beetlejuice", posterPath: Constants.testTitleURL),
        Title(
            id: 2,
            title: "Independence Day",
            name: "Independence Day",
            overview: "A movie about achieving freedom",
            posterPath: Constants.testTitleURL2
        ),
        Title(id: 3, title: "The Mask of Zorro", name: "The Mask of Zorro", overview: "A movie about Zorro", posterPath: Constants.testTitleURL3),
    ]
}
