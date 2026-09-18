//
//  YoutubePlayer.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 18/09/2026.
//

import SwiftUI
import WebKit

struct YoutubePlayer: UIViewRepresentable {
    let videoId: String
    let youtubeBaseURL = APIConfig.shared?.youtubeBaseURL
    
    func makeUIView(context: Context) -> some WKWebView {
        let configuration = WKWebViewConfiguration()
        // Allows inline playback instead of forcing fullscreen on iPhone
        configuration.allowsInlineMediaPlayback = true
        
        let webView = WKWebView(frame: .zero, configuration: configuration)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let baseURLString = youtubeBaseURL,
              let baseURL = URL(string: baseURLString) else { return }
        
        // Use appendingPathComponent or building out query parameters safely
        let fullURL = baseURL.appendingPathComponent(videoId)
        
        // 2. Wrap your target URL in an explicit URLRequest
        var request = URLRequest(url: fullURL)
        
        // 3. Spoof the HTTP headers to satisfy YouTube's strict security requirements
        let bundleID = Bundle.main.bundleIdentifier ?? Constants.bundleId
        let mockReferrer = "https://\(bundleID)".lowercased()
        
        request.setValue(mockReferrer, forHTTPHeaderField: "Referer")
        request.setValue(mockReferrer, forHTTPHeaderField: "origin")
        
        // 4. Force the unique view instance provided by SwiftUI to load the requested page
        uiView.load(request)
    }
}
