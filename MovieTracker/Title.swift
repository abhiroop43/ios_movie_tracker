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

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
}
