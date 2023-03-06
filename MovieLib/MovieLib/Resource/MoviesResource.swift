//
//  MoviesResource.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import Foundation

struct MoviesResource {

    func getMoviesList(pageNo:Int, completionHandler: @escaping(_ result: MoviesResponse?) -> Void){

        var urlRequest = URLRequest(url: URLEndpoint().getPolularMoviesUrl(pageNo: pageNo))
        urlRequest.httpMethod = "get"
        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
        
        ApiUtility.shared.getData(request: urlRequest, resultType: MoviesResponse.self) { response in
            _ = completionHandler(response)
        }
    }
    func getMoviesDetails(movieId:Int, completionHandler: @escaping(_ result: MovieDetailsResponse?) -> Void){

        var urlRequest = URLRequest(url: URLEndpoint().getMovieDetails(movieId: movieId))
        urlRequest.httpMethod = "get"
        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")

        ApiUtility.shared.getData(request: urlRequest, resultType: MovieDetailsResponse.self) { response in
            _ = completionHandler(response)
        }
    }
}
