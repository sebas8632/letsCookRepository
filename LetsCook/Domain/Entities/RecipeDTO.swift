//
//  RecipeDTO.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

struct RecipeDTO {
    var id: Int
    var title: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
    }
}
