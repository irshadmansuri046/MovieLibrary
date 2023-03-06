//
//  MovieModel.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import Foundation

struct MoviesResponse : Decodable {
    let page : Int?
    let results: [MovieData]
    let total_pages : Int?
    let total_results : Int?
    
}

struct MovieData : Decodable, Identifiable {
    var adult : Bool?
    var backdropPath: String?
    var genreIds:[Int]?
    var id: Int?
    var originalLanguage:String?
    var originalTitle:String?
    var overview:String?
    var popularity:CGFloat?
    var posterPath:String?
    var releaseDate:String?
    var title:String?
    var video:Bool?
    var voteAverage:CGFloat?
    var voteCount:Int?

    enum CodingKeys: String, CodingKey{
        case adult
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
