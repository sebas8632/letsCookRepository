//
//  RecipeDetailRepository.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation
import Combine
class RecipeDetailRepository: RecipeDetailRepositoryProtocol {
    var network: Network
    
    init() {
        self.network = Network()
    }
}

extension RecipeDetailRepository {
    func getRecipeDetail(id: Int) -> AnyPublisher<RecipeDetailDTO, NetworkError> {
        let baseUrl = AppEndpoints.baseUrl
        let endPoint = "\(Endpoint.recipesById)\(id)"
        
        let path: String = "\(baseUrl)\(endPoint)"
        
        return network.call(path: path, method: .GET)
    }
}
