//
//  MovieDetails.swift
//  Swiftui_movie
//
//  Created by Liem Vo on 7/7/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//

import SwiftUI
import URLImage

struct MovieDetails : View {
	var movie: Movie
	var body: some View {
		VStack {
			URLImage(URL(string:  "https://image.tmdb.org/t/p/original/\(movie.poster_path)")!, delay: 0.25) {proxy in
				proxy.image.resizable()
					
					.frame(width: UIScreen.main.bounds.height/8*3, height: UIScreen.main.bounds.height/2)
			}
			HStack {
				Text("Description").foregroundColor(.gray)
				Spacer()
			}
			Text(movie.overview).lineLimit(nil)
			Spacer()
		}.navigationBarTitle(Text(movie.title), displayMode: .inline)
			.padding()
	}
}

