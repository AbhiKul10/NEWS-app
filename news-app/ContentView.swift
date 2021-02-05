//
//  ContentView.swift
//  news-app
//
//  Created by Abhi Kulshrestha on 31/01/21.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var data: Datapars
    var body: some View {
        //Color.gray
        NavigationView{
            GeometryReader{ geo in
                ScrollView(.vertical, showsIndicators: false){
                   
                        ForEach(self.data.article, id: \.title){i in
                            NavigationLink(destination: DetailView(data : i)){
                            CardView(data: i)
                            }
                        }
                    
    //                List(data.article, id: \.author) { item in
    //
    //                    Text("hello")
    //
    ////                   // Text(item.title ?? "")
    ////                    Image("" ?? "")
    ////                        .some(url: URL(string: item.urlToImage ?? "")!)
    ////                        .resizable()
    ////                        .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height/3)
    ////                        .scaledToFit()
    //
    //                }
                }
                .padding(.leading)
                    }
            .navigationTitle("NEWS-app")
        }
    }
        
        
        
    }
    
   
extension Image {
    func some(url: URL) -> Self{
        if let data = try? Data(contentsOf: url){
            return Image(uiImage: UIImage(data: data)!)
        }
        return self
            .resizable()
            
    }
}


  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: Datapars())
    }
}




//import Foundation
//enum NEWSErrors: String, Error {
//    case serverError = "Internal Server Error"
//}



   // func getData(completed: @escaping (Result<Response, NEWSErrors>) -> Void) {
    //        let endPoint = "https://newsapi.org/v2/top-headlines?country=in&apiKey=2308a4af07974186bf277afc584f2e1f"
    //
    //        guard let url = URL(string: endPoint) else { return }
    //
    //        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    //            if let _ = error {
    //                completed(.failure(.serverError))
    //            }
    //
    //            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
    //                completed(.failure(.serverError))
    //                return
    //
    //            }
    //
    //            guard let data = data else {
    //                completed(.failure(.serverError))
    //                return
    //            }
    //            do {
    //                let decoder = JSONDecoder()
    //
    //                let notifications = try decoder.decode(Response.self, from: data)
    //                print(notifications)
    //                completed(.success(notifications))
    //            } catch{
    //                completed(.failure(.serverError))
    //            }
    //
    //        }
    //        task.resume()
    //    }
    //}

