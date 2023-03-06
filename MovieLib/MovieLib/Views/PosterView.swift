//
//  PosterView.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 11/02/23.
//

import SwiftUI

struct PosterView: View {

    @ObservedObject var viewModel:MovieDetailsViewModel
    var body: some View {
        
        ZStack(alignment: .bottom){
            VStack{
                
                LazyImage(imageUrl:viewModel.movieDetails?.backdropPath ?? "", isLandscapeImg: true)
                
            }.listRowInsets(EdgeInsets())
            HStack{
                LazyImage(imageUrl:viewModel.movieDetails?.posterPath ?? "", isLandscapeImg: false)
                    .frame(width:80.0,height: 130.0)
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: .white, radius: 4.0)
                    .padding(.leading, 30.0)
                    .padding(.bottom, 60.0)
                Spacer()
                
            }
            
            Rectangle()
                .frame(height: 60)
                .opacity(0.50)
                .blur(radius: 10)
            
            HStack{
                VStack(alignment: .leading){
                    HStack {
                        Text(viewModel.movieDetails?.title ?? "-")
                            .foregroundColor(.white)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .padding(.leading)
                        if let year = viewModel.getMovieReleaseYear(), year != ""{
                            Text("(\(year))")
                                .foregroundColor(.white)
                                .font(.subheadline)
                        }
                        
                    }
                    
                    Text(viewModel.getGenereText())
                        .foregroundColor(.white)
                        .font(.footnote)
                        .padding(.leading)
                        .padding(.bottom)
                }
                Spacer()
            }
        }.listRowInsets(EdgeInsets())
            .listRowBackground(Color.clear)    
    }
    
}

struct PosterView_Previews: PreviewProvider {
    static var previews: some View {
        PosterView(viewModel: MovieDetailsViewModel())
    }
}
