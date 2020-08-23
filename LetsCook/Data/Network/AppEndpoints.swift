//
//  AppEndpoints.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

 class AppEndpoints {
    
    public static let baseUrl = "http://gl-endpoint.herokuapp.com/"
    
    init() {}
}

enum Method: String {
    case GET
}

enum Endpoint: String {
    case recipes = "/recipes"
    case recipesById = "/recipes/"
}
