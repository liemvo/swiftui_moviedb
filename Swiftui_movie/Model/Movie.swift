//
//  Movie.swift
//  Swiftui_movie
//
//  Created by Liem Vo on 7/7/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//

import Foundation

struct Movie: Decodable, Identifiable {
	var popularity: Float
	var vote_count: Int
	var id: Int
	var vote_average: Float
	var title: String
	var poster_path: String
	var original_language: String
	var original_title: String
	var adult: Bool
	var overview: String
	var release_date: String
}
