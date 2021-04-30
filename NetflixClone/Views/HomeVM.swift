//
//  HomeVM.swift
//  NetflixClone
//
//  Created by Marc Jacques on 4/30/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    // [Movie] == actual movie selection of that category
    
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = [exampleMovie1]
    }
}
