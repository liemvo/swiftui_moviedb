//
//  MovieViewModelTests.swift
//  Swiftui_movieTests
//
//  Created by Liem Vo on 12/1/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//

import XCTest

class MovieViewModelTests: XCTestCase {

    func testSuccessFetchData() {
		let expectedList = [Movie.with()]
		let service = MockService(mockData: expectedList)
		
		let viewModel = MovieViewModel(service: service)
		
		
		viewModel.loadData()
		
		XCTAssertTrue(!viewModel.loading)
		XCTAssertEqual(viewModel.movies.results.count, 1)
    }
	
	func testEmptyData() {
		let expectedList = [Movie]()
		let service = MockService(mockData: expectedList)
		
		let viewModel = MovieViewModel(service: service)
		
		
		viewModel.loadData()
		
		XCTAssertTrue(!viewModel.loading)
		XCTAssertEqual(viewModel.movies.results.count, 0)
	}
	
	func testNilData() {
		let expectedList: [Movie]? = nil
		let service = MockService(mockData: expectedList)
		
		let viewModel = MovieViewModel(service: service)
		
		
		viewModel.loadData()
		
		XCTAssertTrue(!viewModel.loading)
		XCTAssertEqual(viewModel.movies.results.count, 0)
	}

}


