//
//  ContentView.swift
//  Hacker News
//
//  Created by Mac on 17/10/2024.
//

import SwiftUI

struct ContentView: View {
    //     observedobject property wrapper
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
              
            }
            .navigationTitle("Hacker News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//struct Post: Identifiable{
//let id: String
//    let title: String
//}
//
//let posts = [
//Post(id: "1", title: "Hello"),
//Post(id: "2", title: "Bonjour"),
//Post(id: "1", title: "Hola")
//]
