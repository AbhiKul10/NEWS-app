//
//  CardView.swift
//
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI

struct CardView : View {
    var data : articles
    var body : some View{
    
        ZStack{
            
                
                
            
            
        VStack(alignment: .leading, spacing: 12){
            ZStack{
                
                
                Image("")
                    .soome(url: URL(string : data.urlToImage ?? "") ?? URL(string: "https://furcommission.com/wp-content/uploads/New-Images/Home-Page_Slider/News.jpg")!)
                    .resizable()
                   // .scaledToFill()
                    //.opacity(0.8)
                    .cornerRadius(20)
                VStack{
                    Spacer()
                    VStack{
                        Text(data.title ?? "")
                            .foregroundColor(.white)
                            .font(.body)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color.gray.opacity(0.8))
                    .cornerRadius(20)
            }
                }
            .padding()
            .frame(width: UIScreen.main.bounds.width - 30)
            .frame(height : UIScreen.main.bounds.height / 3.5)
            //.background(Color.gray)
            .cornerRadius(20)
 
        }
            
            }
 
        
    }
}


extension Image {
    func soome(url: URL) -> Self{
        if let data = try? Data(contentsOf: url){
            return Image(uiImage: UIImage(data: data)!)
        }
        return self
            .resizable()
            
    }
}
