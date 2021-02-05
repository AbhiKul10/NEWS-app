//
//  DetailView.swift
//  news-app
//
//  Created by Abhi Kulshrestha on 02/02/21.
//

import SwiftUI

struct DetailView: View {
    var data : articles
    var body: some View {
        GeometryReader{ geo in
            ScrollView(.vertical){
                VStack{
                    Image("")
                        .soome(url: URL(string: data.urlToImage ?? "")!)
                        .resizable()
                        .cornerRadius(30)
                        .scaledToFit()
                        
                    
                   
                        Text(data.title ?? "")
                            .fontWeight(.bold)
                            
                    
                        Divider()
                    
                    HStack{
                        VStack(alignment: .leading){
                            HStack(){
                                Text("Published On : ")
                                    
                                Text(data.publishedAt ?? "")
                            }.foregroundColor(.gray)
                            .padding(.top)
                            .font(.caption)
                            
                            HStack{
                                Text("Author : ")
                                    .font(.footnote)
                                Text(data.author ?? "")
                                Text("(\(data.source.name ?? ""))")
                            }.foregroundColor(.gray)
                            .font(.footnote)
                        
                        
                    }
                        Spacer(minLength: 0)
                }
                    
                        Text(data.description ?? "")
                            .padding(.bottom)
                            .padding(.top)
                            
                        Text(data.content ?? "")
                            .padding(.bottom)
                    //Divider()
                        .padding(.top)
                    Link("Click Here to continue reading...", destination: URL(string: data.url ?? "")!)
                    
                }
                
                .padding()
                
            }
        }
        
    }
}
/*
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: )
    }
}
*/
