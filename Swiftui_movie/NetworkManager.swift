//
//  NetworkManager.swift
//  Swiftui_movie
//
//  Created by Liem Vo on 7/7/19.
//  Copyright © 2019 Liem Vo. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class NetworkManager: BindableObject {
  var didChange = PassthroughSubject<NetworkManager, Never>()
  var movies = MovieList(results: []){
    didSet {
      didChange.send(self)
    }
  }
  
  init() {
    guard let url = URL(string: "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=<API_KEY>") else { return }
    URLSession.shared.dataTask(with: url){ (data, _, _) in
      guard let data = data else { return }
      let movies = try! JSONDecoder().decode(MovieList.self, from: data)
      DispatchQueue.main.async {
        self.movies = movies
      }
    }.resume()
  }
}
