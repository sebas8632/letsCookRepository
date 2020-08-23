//
//  RecipeDetailUseCase.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation
import Combine
class RecipeDetailUseCase: RecipeDetailUseCaseProtocol {
    var recipeDetailRepository: RecipeDetailRepositoryProtocol
    
    init(recipeDetailRepository: RecipeDetailRepositoryProtocol) {
        self.recipeDetailRepository = recipeDetailRepository
    }
}

extension RecipeDetailUseCase {
    
    func execute(id: Int) -> AnyPublisher<RecipeDetailDTO, NetworkError> {
        recipeDetailRepository.getRecipeDetail(id: id)
    }
}
