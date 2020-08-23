//
//  ViewController.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import UIKit

class RecipesListViewController: BaseViewController {

    private var recipesListUseCase: RecipesListUseCaseProtocol?
   
    var recipes: [RecipeDTO]?
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var recipesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useCaseInit()
        searchBarConfig()
        getRecipes()
    }
    
    private func useCaseInit() {
        let recipesListRepository: RecipesListRepositoryProtocol = RecipesListRepository()
        recipesListUseCase = RecipesListUseCase(recipesListRepository: recipesListRepository)
    }
    
    private func searchBarConfig() {
        searchBar.backgroundImage = nil
    }

    private func getRecipes() {
        guard let useCase = self.recipesListUseCase else {
            errorManager(error: NetworkError.internalError)
            return
        }
        
        useCase.execute { (resultado) in
            switch resultado {
            case .success(let recipes):
                self.recipes = recipes
                DispatchQueue.main.async {
                    self.recipesTableView.reloadData()
                }
            case .failure(let error):
                self.errorManager(error: error)
            }
        }
    }
    
}


extension RecipesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let recipes = self.recipes {
            return recipes.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as! RecipeTableViewCell
        if let recipes = self.recipes {
             cell.recipeName.text = recipes[indexPath.row].title
        } else {
            self.errorManager(error: NetworkError.internalError)
        }
       
        return cell
    }
}

extension RecipesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO
    }
}
