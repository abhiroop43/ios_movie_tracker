//
//  sourcecode.swift
//  MovieTracker
//
//  Created by Abhiroop Santra on 12/09/2026.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: heroTestTitle)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }

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
        }
    }
}

#Preview {
    HomeView()
}
