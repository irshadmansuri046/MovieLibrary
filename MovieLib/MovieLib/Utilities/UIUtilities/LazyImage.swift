//
//  LazyImage.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import SwiftUI

struct LazyImage: View {
     
    //static var defaultImage: UIImage = UIImage(named:"default")!
    @ObservedObject var imageDownloader: ImageDownloader

    @State private var isLandsView : Bool = false
    init(imageUrl: String, isLandscapeImg: Bool) {
        isLandsView = isLandscapeImg
        imageDownloader = ImageDownloader(imageUrl: imageUrl)
    }

    var body: some View {

        VStack{
            if let img = imageDownloader.downloadedImage {
                Image(uiImage:img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }else{
                
                if isLandsView{
                    Image(uiImage: UIImage(named:"default_lands")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }else{
                    Image(uiImage: UIImage(named:"default")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct LazyImage_Previews: PreviewProvider {
    static var previews: some View {
        LazyImage(imageUrl: "", isLandscapeImg: false)
    }
}
