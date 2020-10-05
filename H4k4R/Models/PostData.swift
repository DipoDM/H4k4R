//
//  PostData.swift
//  H4k4R
//
//  Created by ODM on 7/15/20.
//  Copyright © 2020 ODM. All rights reserved.
//

import Foundation


struct Results: Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id : String {
        // this is a trick to save the data gotten from objectID into the id variable 
        return objectID
    }
    let objectID: String
    let points : Int
    let title : String
    let url : String?
}
