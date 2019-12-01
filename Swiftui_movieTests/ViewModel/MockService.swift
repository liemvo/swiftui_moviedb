//
//  MockService.swift
//  Swiftui_movieTests
//
//  Created by Liem Vo on 12/1/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//

import Foundation

class MockService : ServiceProtocol {
	let mockData: [Movie]?
	
	init(mockData: [Movie]?) {
		self.mockData = mockData
	}
	
	func fetchPopularMovies(completion: @escaping ([Movie]?) -> Void) {
		completion(mockData)
	}
}
