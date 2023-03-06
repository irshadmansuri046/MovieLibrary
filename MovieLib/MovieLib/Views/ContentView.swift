//
//  ContentView.swift
//  MovieLib
//
//  Created by GOQii-Irshad on 09/02/23.
//

import SwiftUI

struct ContentView: View {
   
    @State private var loading = false
    @State private var pageNo:Int = 1
    @ObservedObject var moviesViewModel = MoviesViewModel()
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .center){
                if !networkManager.isConnected{
                    Text(networkManager.connectionDescription)
                }else{
                    if moviesViewModel.movies.count == 0{
                        LoadingView()
                            .frame(width: 200, height: 200)
                            .foregroundColor(.orange)
                            .onAppear{
                                moviesViewModel.getPopularMovies(pageNo: pageNo)
                            }
                    }else{
                        List {
                            ForEach(moviesViewModel.movies, id: \.id) {
                                movie in
                                NavigationLink(destination: MovieDetailsView(movieId: movie.id)) {
                                    MovieCell(movieData: movie)
                                }
                                
                            }.listRowBackground(Color.clear)
                        }
                        
                        Button("Load More") {
                            self.pageNo = self.pageNo + 1
                            moviesViewModel.getPopularMovies(pageNo: pageNo)
                        }.font(.footnote)
                    }
                }
            }.navigationBarTitle("Movies Library")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}

