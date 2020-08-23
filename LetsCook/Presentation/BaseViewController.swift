//
//  BaseViewController.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    func errorManager(error: NetworkError) {
           switch error {
           case .internalError:
               print("Something was wrong")
           case .parsingError:
               print("Has ocurred an error parsing the data")
           case .serverError(let errorServer):
               print("\(String(describing: errorServer))")
           default:
               print("Has occurred an error unexpected")
           }
           
       }

}
