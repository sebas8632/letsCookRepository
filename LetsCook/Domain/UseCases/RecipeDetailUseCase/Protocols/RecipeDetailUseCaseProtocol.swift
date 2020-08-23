//
//  RecipeDetailUseCaseProtocol.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation
import Combine
protocol RecipeDetailUseCaseProtocol {
    
    var recipeDetailRepository: RecipeDetailRepositoryProtocol {get set}
    
    func execute(id: Int) -> AnyPublisher<RecipeDetailDTO, NetworkError>
}
