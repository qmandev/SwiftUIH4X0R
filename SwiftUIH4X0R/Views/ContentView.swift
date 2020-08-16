//
//  ContentView.swift
//  SwiftUIH4X0R
//
//  Created by ARMSTRONG on 12/9/19.
//  Copyright © 2019 ARMSTRONG. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(self.networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }                
            }
            .navigationBarTitle("Hacker News")
        }.onAppear {
            self.networkManager.fetchData()
        }.environment(\.horizontalSizeClass, .compact)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // ContentView().previewLayout(.fixed(width: 896, height: 414))
        ContentView()
    }
}

/*
 struct Post: Identifiable {
 let id: String
 let title: String
 } */

/*
 let posts = [
 Post(id: "1", title: "Hello"),
 Post(id: "2", title: "Awsome"),
 Post(id: "3", title: "New Year")
 ]
 */
