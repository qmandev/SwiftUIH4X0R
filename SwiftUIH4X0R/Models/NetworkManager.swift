//
//  NetworkManager.swift
//  SwiftUIH4X0R
//
//  Created by ARMSTRONG on 12/9/19.
//  Copyright © 2019 ARMSTRONG. All rights reserved.
//

import Foundation

class NetworkManager : ObservableObject {
    
    @Published var posts = [Post]()
    
    /*
    init() {
        fetchData()
    }*/
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: URLSessionConfiguration.default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if (error == nil ) {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print("Network error: \(error.localizedDescription)")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
