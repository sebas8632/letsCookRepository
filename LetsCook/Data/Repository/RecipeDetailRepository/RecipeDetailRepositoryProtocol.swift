//
//  RecipeDetailRepositoryProtocol.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation
import Combine

protocol RecipeDetailRepositoryProtocol {
    
    var network: Network {get set}
    
    func getRecipeDetail(id: Int) -> AnyPublisher<RecipeDetailDTO, NetworkError>
}
