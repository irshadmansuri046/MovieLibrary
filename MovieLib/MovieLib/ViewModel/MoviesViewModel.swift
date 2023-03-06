//
//  MoviesViewModel.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import Foundation

class MoviesViewModel : ObservableObject {
    @Published var movies : Array<MovieData> = Array<MovieData>()
    private let resource: MoviesResource = MoviesResource()

    func getPopularMovies(pageNo:Int) {
        resource.getMoviesList(pageNo: pageNo) { [weak self] response in
            if(response?.results != nil){
                DispatchQueue.main.async {
                    self?.movies.append(contentsOf: response?.results ?? [])
                }
            }
        }
    }

}
