//
//  NetworkManager.swift
//  Swiftui_movie
//
//  Created by Liem Vo on 7/7/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//


import Combine

class MovieViewModel: ObservableObject {
	@Published var movies = MovieList(results: [])
	@Published var loading = false
	
	let service: ServiceProtocol
	init() {
		self.service = APIService()
	}
	
	func loadData() {
		self.loading = true
		service.fetchPopularMovies { movies in
			self.loading = false
			guard let movies = movies else {
				return
			}
			self.movies.results = movies
		}
	}
}
