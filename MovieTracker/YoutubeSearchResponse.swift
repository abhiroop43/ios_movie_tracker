//
//  YoutubeSearchResponse.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 18/09/2026.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [ItemProperties]?
}

struct ItemProperties: Codable {
    let id: IdProperties?
}

struct IdProperties: Codable {
    let videoId: String?
}
