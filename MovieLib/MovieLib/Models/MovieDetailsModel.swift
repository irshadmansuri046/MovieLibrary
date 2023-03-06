//
//  MovieDetailsModel.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import Foundation

struct MovieDetailsResponse: Decodable{

    let adult:Bool?
    let backdropPath: String?
    let belongsToCollection:BelongsToCollectData?
    let budget: Int?
    let genres: [GenresData]?
    let homepage: String?
    let id:Int?
    let imdbId:String?
    let originalLanguage:String?
    let originalTitle:String?
    let overview: String?
    let popularity: Double?
    let posterPath:String?
    let productionCompanies: [ProdCompData]?
    let releaseDate: String?
    let revenue:Int?
    let runtime: Int?
    let spokenLanguages:[SpokenLangData]?
    let status:String?
    let tagline:String?
    let title:String?
    let video:Bool?
    let voteAverage:Double?
    let voteCount:Int?
    
    enum CodingKeys: String, CodingKey{
       case adult
       case backdropPath = "backdrop_path"
       case belongsToCollection = "belongs_to_collection"
       case budget
       case genres
       case homepage
       case id
       case imdbId = "imdb_id"
       case originalLanguage = "original_language"
       case originalTitle = "original_title"
       case overview
       case popularity
       case posterPath = "poster_path"
       case productionCompanies = "production_companies"
       case releaseDate = "release_date"
       case revenue
       case runtime
       case spokenLanguages = "spoken_languages"
       case status
       case tagline
       case title
       case video
       case voteAverage = "vote_average"
       case voteCount = "vote_count"
    }
    
}
struct ProdCompData : Decodable {
      let id: Int?
      let logo_path:String?
      let name:String?
      let origin_country:String?
}
struct SpokenLangData : Decodable {
    
      let english_name: String?
      let iso_639_1:String?
      let name:String?
      
}
struct BelongsToCollectData : Decodable {
    let id : Int?
    let name: String?
    let poster_path:String?
    let backdrop_path:String?
}
struct GenresData: Decodable{
    let id : Int?
    let name: String?
}
