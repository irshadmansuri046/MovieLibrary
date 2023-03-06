//
//  StaticsView.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 11/02/23.
//

import SwiftUI

struct StaticsView: View {
    @ObservedObject var viewModel:MovieDetailsViewModel
    var body: some View {
        
        HStack{
            Text("\(viewModel.movieDetails?.runtime ?? 0)").foregroundColor(Color.blue)
                .padding(.leading)
                .font(.title2).bold()
            Text("mins").foregroundColor(Color.black)
                .font(.subheadline).padding(.trailing)
            
            CircleProgressView(progress: viewModel.getUserScore())
                .frame(width: 80, height: 80, alignment: .center)
            
            Text("\(viewModel.movieDetails?.voteCount ?? 0)").foregroundColor(Color.blue)
                .font(.title2).bold()
            
            Text("reviews").foregroundColor(Color.black)
                .font(.subheadline).padding(.trailing)
        }.listRowInsets(EdgeInsets())
            .listRowBackground(Color.white)

    }
}

struct StaticsView_Previews: PreviewProvider {
    static var previews: some View {
        StaticsView(viewModel: MovieDetailsViewModel())
    }
}
