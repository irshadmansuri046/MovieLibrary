//
//  OverviewView.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 11/02/23.
//

import SwiftUI

struct OverviewView: View {
    @ObservedObject var viewModel:MovieDetailsViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Overview").foregroundColor(Color.blue)
                .font(.title3).bold()
                .padding(.trailing)
                //.multilineTextAlignment(.center)
                //.padding()
            
            Divider()
            
            Text(viewModel.movieDetails?.overview ?? "")
                .font(.body)
                .lineLimit(nil)
                .lineSpacing(8)
                .foregroundColor(.black)
        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView(viewModel: MovieDetailsViewModel())
    }
}
