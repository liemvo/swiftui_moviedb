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
  @ObservedObject var networkManager = NetworkManager()
  var body: some View {
    NavigationView {
		List(networkManager.movies.results) { movie in
        NavigationLink(destination: MovieDetails(movie: movie)){
              MovieRow(movie: movie)
          }
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
