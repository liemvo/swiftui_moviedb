//
//  MovieRow.swift
//  Swiftui_movie
//
//  Created by Liem Vo on 7/7/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//

import URLImage
import SwiftUI

struct MovieRow : View {
	var movie: Movie
	
	var body: some View {
		HStack {
			URLImage(URL(string:  "https://image.tmdb.org/t/p/original/\(movie.poster_path)")!, delay: 0.25) { proxy in
				proxy.image.resizable()
					.frame(width: 120, height: 160)
				
			}
			
			VStack {
				HStack {
					Text(movie.title)
						.foregroundColor(.blue)
						.lineLimit(nil)
					Spacer()
				}
				HStack {
					Text(movie.release_date).foregroundColor(.gray)
					Spacer()
					Text("Rate: \(movie.vote_average.format())")
				}
				Spacer()
			}
		}.padding()
	}
}

extension Float {
	func format() -> String {
		return String(format: "%.2f",self)
	}
}
