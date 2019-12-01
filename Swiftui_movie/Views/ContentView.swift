//
//  ContentView.swift
//  Swiftui_movie
//
//  Created by Liem Vo on 7/7/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//
import Foundation
import SwiftUI

struct ContentView : View {
	@ObservedObject var viewmodel = MovieViewModel()
	var body: some View {
		NavigationView {
			VStack {
				if viewmodel.loading {
					Text("Loading ...")
				} else {
					List(viewmodel.movies.results) { movie in
						NavigationLink(destination: MovieDetails(movie: movie)){
							MovieRow(movie: movie)
						}
					}
				}
			}
			.onAppear {
				self.viewmodel.loadData()
			}
			.navigationBarTitle(Text("Movies"))
		}
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
#endif
