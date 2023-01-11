//
//  MovieViewModel.swift
//  MovieDBProject
//
//  Created by Renato Savoia Girão on 15/12/22.
//

import UIKit

class MoviewViewModel: ObservableObject {
    
    var movies: [Movie]?
    
    func getMovies(completion: @escaping (Results) -> ()) {
        let key = "d830c306bbead007f72d9ad843bc6985"
        let endpoint = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(key)&language=pt-BR&page=1")
        
        URLSession.shared.dataTask(with: endpoint!) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                do {
                    let moviesResponse = try JSONDecoder().decode(Results.self, from: data)
                    self.movies = moviesResponse.results
                } catch (let error) {
                    return
                }
            } else {
                return
            }
        } .resume()
    }
}

