//
//  MovieViewModel.swift
//  MovieDBProject
//
//  Created by Renato Savoia Girão on 15/12/22.
//

import UIKit

class MoviewViewModel: ObservableObject {
    
    var movies: [Movie]?
    
    func fetchMovie() {
        let key = "d830c306bbead007f72d9ad843bc6985"
        let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=\(key)")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                do {
                    let discover = try JSONDecoder().decode(Discover.self, from: data)
                    print(discover.results.count)
                    self.movies = discover.results
                } catch (let error) {
                    print(error)
                    return
                }
            } else {
                print("error")
                return
            }
        } .resume()
    }
}

