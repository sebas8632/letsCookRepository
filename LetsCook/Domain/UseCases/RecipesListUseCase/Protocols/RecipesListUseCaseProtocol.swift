//
//  RecipesListUseCaseProtocol.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

protocol RecipesListUseCaseProtocol {
    var recipesListRepository: RecipesListRepositoryProtocol {get set}
    
    func execute(completion: @escaping((Result<[RecipeDTO], NetworkError>) -> Void))
}
