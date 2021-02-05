//
//  Response.swift
//  news-app
//
//  Created by Abhi Kulshrestha on 01/02/21.
//

import Foundation

struct Response : Codable {
    var totalResuls: Int?
    var status: String?
    var articles : [articles]
}

struct articles : Codable{
    var source : source
    var author : String?
    var title : String?
    var description : String?
    var url : String?
    var urlToImage : String?
    var publishedAt : String?
    var content : String?
}

struct source : Codable{
    var id : String?
    var name : String?
}
