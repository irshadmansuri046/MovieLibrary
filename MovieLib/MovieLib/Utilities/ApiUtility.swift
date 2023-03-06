//
//  ApiUtility.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//  Source: Youtube: CodeCat15 channel

import Foundation

final class ApiUtility {

    static let shared = ApiUtility()
    private init(){}

    func postData<T:Decodable>(request: URLRequest, resultType:T.Type, completionHandler:@escaping(_ reuslt: T?)-> Void) {

        processRequest(request: request, resultType: resultType) { response in
            _ = completionHandler(response)
        }
    }

    func getData<T:Decodable>(request: URLRequest, resultType:T.Type, completionHandler:@escaping(_ reuslt: T?)-> Void) {

        processRequest(request: request, resultType: resultType) { response in
            _ = completionHandler(response)
        }
    }

    private func processRequest<T:Decodable>(request: URLRequest,resultType:T.Type, completionHandler:@escaping(_ reuslt: T?)-> Void ) {

        URLSession.shared.dataTask(with: request) { data, response, error in
            if(error == nil && data != nil) {
                do {
                    let response = try JSONDecoder().decode(resultType.self, from: data!)
                    _ = completionHandler(response)
                } catch  {
                    debugPrint("error occured \(error)")
                    _ = completionHandler(nil)}
            }
        }.resume()
    }
}
