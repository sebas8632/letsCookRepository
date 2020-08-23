//
//  RecipesListRepositoryProtocol.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

protocol RecipesListRepositoryProtocol {
    
    func getRecipesList(completion: @escaping((Result<RecipeDTO, Error>) -> Void))
}
