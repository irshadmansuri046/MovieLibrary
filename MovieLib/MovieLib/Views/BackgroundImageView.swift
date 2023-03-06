//
//  BackgroundImageView.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 11/02/23.
//

import SwiftUI

struct BackgroundImageView: View{
    var body: some View {
        Image("movieBg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .contrast(0.7)
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
