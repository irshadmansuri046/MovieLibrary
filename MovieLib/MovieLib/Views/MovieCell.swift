//
//  MovieCell.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import SwiftUI

struct MovieCell: View {
    var movieData : MovieData?
    var body: some View {
        VStack{
            LazyImage(imageUrl: movieData?.posterPath ?? "", isLandscapeImg: false)
        }.cornerRadius(20.0)
         .shadow(radius: 4.0)
         .background(Color.clear)
            
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell()
    }
}
