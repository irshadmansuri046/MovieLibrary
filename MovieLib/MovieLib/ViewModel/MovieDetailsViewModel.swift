//
//  MovieDetailsViewModel.swift
//  MovieLib
//
//  Created by Irshad on 10/02/23.
//

import Foundation

class MovieDetailsViewModel:ObservableObject{
    @Published var movieDetails : MovieDetailsResponse?
    private let resource: MoviesResource = MoviesResource()
    
    func getMovieDetails(movieId:Int) {
        resource.getMoviesDetails(movieId: movieId) { result in
            DispatchQueue.main.async {
                self.movieDetails = result
            }
        }
    }
    func getGenereText() -> String{
        var genereStr = ""
        if let genereArray = movieDetails?.genres {
            
            for gen in genereArray{
                if genereStr == "" {
                    genereStr = gen.name ?? ""
                }else{
                    genereStr = "\(genereStr), \(gen.name ?? "")"
                }
            }
        }
        return genereStr
    }
    func getUserScore() -> Double{
        var p = 0.0
        if let progress = movieDetails?.voteAverage {
            p = Double(progress*10/100)
        }
        return p
    }
    func getMovieReleaseYear() -> String{
        if let year = movieDetails?.releaseDate?.components(separatedBy: "-").first{
            return year
        }
        return ""
    }
    func getReleaseDate() -> String {

        if let dateStr = movieDetails?.releaseDate as? String{
            let olDateFormatter = DateFormatter()
            olDateFormatter.dateFormat = "yyyy-MM-dd"
            
            let oldDate = olDateFormatter.date(from: dateStr)
            
            let convertDateFormatter = DateFormatter()
            convertDateFormatter.dateFormat = "EEE, d MMM yyyy"
            
            return convertDateFormatter.string(from: oldDate!)
        }
        return "-"
    }
}
