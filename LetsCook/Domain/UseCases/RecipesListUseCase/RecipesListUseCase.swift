//
//  RecipesListUseCase.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

class RecipesListUseCase: RecipesListUseCaseProtocol {
    var recipesListRepository: RecipesListRepositoryProtocol

    init(recipesListRepository: RecipesListRepositoryProtocol) {
        self.recipesListRepository = recipesListRepository
    }
}

extension RecipesListUseCase {
    
    func execute(completion: @escaping ((Result<[RecipeDTO], NetworkError>) -> Void)) {
        recipesListRepository.getRecipesList(completion: completion)
       }
}
