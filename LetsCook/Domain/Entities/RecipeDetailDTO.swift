//
//  RecipeDetailDTO.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

struct RecipeDetailDTO: Codable {
    
    var id: String
    var title: String
    var rating: Int
    var imageURL: String
    var instructions: String
    
    enum CodingKeys:  String, CodingKey{
        case id = "id"
        case title = "title"
        case rating = "rating"
        case imageURL = "image"
        case instructions = "instructions"
    }
}
