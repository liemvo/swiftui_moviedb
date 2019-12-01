//
//  MovieListTests.swift
//  Swiftui_movieTests
//
//  Created by Liem Vo on 12/1/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//

import XCTest

class MovieListTests: XCTestCase {

	func testSuccessParser() {
		let json = """
		{
			"results": [
				{
					"id": 49030,
					"popularity": 7.8,
					"vote_count": 4,
					"vote_average": 4.5,
					"title": "Swift MVVM",
					"poster_path": "path",
					"original_language": "En",
					"original_title": "Swift MVVM",
					"adult": false,
					"overview": "Overview",
					"release_date": "2019-12-1T00 20:10:00"
				}
			]
		}
		""".data(using: .utf8)!
		
		let movies = try! JSONDecoder().decode(MovieList.self, from: json)
		
		XCTAssertNotNil(movies)
		XCTAssertEqual(movies.results.first?.id, Movie.with().id)
		
	}
}
