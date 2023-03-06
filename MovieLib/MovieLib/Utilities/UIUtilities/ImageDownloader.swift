//
//  ImageLoader.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//
import SwiftUI
import Foundation

class ImageDownloader : ObservableObject {
    @Published var downloadedImage: UIImage?
    private let imagePath: URL

    init(imageUrl: String) {
        self.imagePath = URL(string: "https://image.tmdb.org/t/p/w500\(imageUrl)")!
        getImage()
    }

    func getImage(){
        var urlRequest = URLRequest(url: self.imagePath)
        urlRequest.httpMethod = "get"
        URLSession.shared.dataTask(with: urlRequest) { [weak self] imageData, response, error in
            if(error == nil && imageData != nil){
                DispatchQueue.main.async {
                    
                    self?.downloadedImage = UIImage(data: imageData!)
                }
            }
        }.resume()
    }
}
//extension UIImage {
//    func resizeImage(with size: CGSize) -> UIImage? {
//        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
//        draw(in: CGRect(origin: .zero, size: size))
//
//        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        return resizedImage
//    }
//}
