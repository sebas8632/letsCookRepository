//
//  RecipesListRepository.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

class RecipesListRepository: RecipesListRepositoryProtocol {
    
    private var network: Network
    
    init() {
        network = Network()
    }
    
    func getRecipesList(completion: @escaping ((Result<[RecipeDTO], NetworkError>) -> Void)) {
        
        let baseUrl = AppEndpoints.baseUrl
        let endPoint = Endpoint.recipes
        
        let path: String = "\(baseUrl)\(endPoint)"
        
        network.request(endPoint: path, method: .GET, completion: completion)
    }
    
    
}
