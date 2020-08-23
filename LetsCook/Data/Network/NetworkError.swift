//
//  NetworkError.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case internalError
    case serverError(errorDescripcion: String?)
    case parsingError
}
