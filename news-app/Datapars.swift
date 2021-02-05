//
//  Datapars.swift
//  news-app
//
//  Created by Abhi Kulshrestha on 01/02/21.
//

import Foundation

class Datapars : ObservableObject {
    @Published var article = [articles]()
    
    init(){
        loadData()
    }
    
    func loadData(){
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=in&apiKey=2308a4af07974186bf277afc584f2e1f") else{
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                
                print(data)
                
                
                
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data){
                    print(decodedResponse)
                    DispatchQueue.main.async {
                        self.article = decodedResponse.articles
                    }
                    return
                }
            }
            
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }

}
