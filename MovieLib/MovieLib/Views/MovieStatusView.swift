//
//  MovieStaticsView.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 11/02/23.
//

import SwiftUI

struct MovieStatusView: View {
    @ObservedObject var viewModel:MovieDetailsViewModel
    var body: some View
    {
        HStack{
            Text("Status").foregroundColor(Color.blue)
                .font(.subheadline).padding(.trailing).bold()
            Spacer()
            Text(viewModel.movieDetails?.status ?? "-").foregroundColor(Color.black)
                .font(.subheadline)
        }
        HStack{
            Text("Original Title").foregroundColor(Color.blue)
                .font(.subheadline).padding(.trailing).bold()
            Spacer()
            Text(viewModel.movieDetails?.originalTitle ?? "-").foregroundColor(Color.black)
                .font(.subheadline)
        }
        HStack{
            Text("Release Date").foregroundColor(Color.blue)
                .font(.subheadline).padding(.trailing).bold()
            Spacer()
            Text(viewModel.getReleaseDate()).foregroundColor(Color.black)
                .font(.subheadline)
        }
        HStack{
            Text("Original Language").foregroundColor(Color.blue)
                .font(.subheadline).padding(.trailing).bold()
            Spacer()
            Text(viewModel.movieDetails?.originalLanguage ?? "-").foregroundColor(Color.black)
                .font(.subheadline)
        }
        HStack{
            Text("Budget").foregroundColor(Color.blue)
                .font(.subheadline).padding(.trailing).bold()
            Spacer()
            if let budget = viewModel.movieDetails?.budget, budget != 0{
                Text("$\(budget)").foregroundColor(Color.black)
                    .font(.subheadline)
            }else{
                Text("-").foregroundColor(Color.black)
                    .font(.subheadline)
            }
        }
        HStack{
            Text("Revenue").foregroundColor(Color.blue)
                .font(.subheadline).padding(.trailing).bold()
            Spacer()
            if let revenue = viewModel.movieDetails?.revenue, revenue != 0{
                Text("$\(revenue)").foregroundColor(Color.black)
                    .font(.subheadline)
            }else{
                Text("-").foregroundColor(Color.black)
                    .font(.subheadline)
            }
        }
    }
    
}

struct MovieStaticsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieStatusView(viewModel: MovieDetailsViewModel())
    }
}
