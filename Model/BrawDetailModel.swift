//
//  BrawDetailModel.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import Foundation


struct BrawDetailModel : Codable{
    
    let name : String
    let imageUrl2 : String
    let description :String
    
    enum Codingkeys : String,CodingKey{
        case name = "name"
        case imageUrl2 = "imageUrl2"
        case description = "description"
    }
    
}
