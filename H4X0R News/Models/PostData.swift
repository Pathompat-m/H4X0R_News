//
//  PostData.swift
//  H4X0R News
//
//  Created by Pathompat Mekbenchapivat on 2/4/2567 BE.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
