//
//  URLEndpoint.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import Foundation

class URLEndpoint {
    
    func getPolularMoviesUrl(pageNo:Int) -> URL{
        return URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=0317f0c2e85632a6e0b4cfb5c88c0c9f&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=\(pageNo)&with_watch_monetization_types=flatrate")!
    }
    func getMovieDetails(movieId:Int) -> URL{
        return URL(string: "https://api.themoviedb.org/3/movie/\(movieId)?api_key=0317f0c2e85632a6e0b4cfb5c88c0c9f&language=en-US")!
    }
}
