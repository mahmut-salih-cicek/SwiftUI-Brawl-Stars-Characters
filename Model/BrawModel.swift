//
//  BrawModel.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import Foundation

////https://api.brawlapi.com/v1/brawlers/

struct BrawModel : Codable{
    let id : Int
    let avatarId : Int
    let name : String
    let imageUrl3 : String
    let description : String
    
    private enum Codingkeys : String,CodingKey{
        case id = "id"
        case avatarId = "avatarId"
        case name = "name"
        case imageUrl3 = "imageUrl3"
        case description = "description"
    }
    
}



struct BrawList : Codable{
    let list : [BrawModel]
    private enum Codingkeys : String,CodingKey{
        case list = "list"
    }
}



