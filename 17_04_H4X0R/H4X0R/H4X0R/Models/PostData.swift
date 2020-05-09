//
//  PostData.swift
//  H4X0R
//
//  Created by Judah Hudson on 4/9/20.
//  Copyright © 2020 Judah Hudson. All rights reserved.
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
    let url: String?  //optional. allows url to be null (for when null from algolia api site
}
