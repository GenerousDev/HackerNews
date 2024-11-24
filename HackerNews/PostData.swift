//
//  PostData.swift
//  Hacker News
//
//  Created by Mac on 17/10/2024.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
}
