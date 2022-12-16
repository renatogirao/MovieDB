//
//  Movie.swift
//  MovieDBProject
//
//  Created by Renato Savoia Girão on 16/12/22.
//

import UIKit

class Movie: Codable {
    
    let id: Int
    let title: String
    let overview: String?
    let image: String
    let voteAverage: Float
    let releaseDate: String?
    
    private enum CodingKeys: String, CodingKey {
         case id
         case title
         case releaseDate = "release_date"
         case image = "poster_path"
         case overview
         case voteAverage = "vote_average"
    }
}
