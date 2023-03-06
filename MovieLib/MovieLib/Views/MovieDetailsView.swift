//
//  MovieDetails.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 10/02/23.
//

import SwiftUI

struct MovieDetailsView: View {
   
    var movieId:Int?
    @ObservedObject var viewModel = MovieDetailsViewModel()
    
    var body: some View {
        ZStack {
            
            BackgroundImageView()
            
            List{
                Section{
                    
                    PosterView(viewModel: viewModel)
                    StaticsView(viewModel: viewModel)
                    if let overView = viewModel.movieDetails?.overview, !overView.isEmpty{
                        OverviewView(viewModel: viewModel)
                    }
                }
                Section{
                    MovieStatusView(viewModel: viewModel)
                }
            }
            .background(Color.clear).scrollContentBackground(.hidden)
            .onAppear{
                viewModel.getMovieDetails(movieId: self.movieId ?? 0)
            }.navigationTitle("")
        }
    }
    
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movieId: 0)
    }
}
