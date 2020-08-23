//
//  RecipeDetailViewController.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import UIKit
import Combine

class RecipeDetailViewController: BaseViewController {

    var idRecipe: Int?
    var recipeDetailUseCase: RecipeDetailUseCaseProtocol?
    
    private var publishers = [AnyCancellable]()

    
    unowned var recipeDetailView: RecipeDetailView {return self.view as! RecipeDetailView}
    unowned var recipeTitle: UILabel {return recipeDetailView.titleLabel}
    unowned var recipeImage: UIImageView {return recipeDetailView.imageRecipe}
    unowned var descriptionLabel: UILabel {return recipeDetailView.descriptionLabel}
//     var ratingStars: [UIImageView] {return [recipeDetailView.starImage1, recipeDetailView.starImage2, recipeDetailView.starImage3, recipeDetailView.starImage4, recipeDetailView.starImage5]}

    override func viewDidLoad() {
        super.viewDidLoad()
        useCaseInit()
        getRecipeDetail()
        
    }
    
    override func loadView() {
        self.view = RecipeDetailView(frame: UIScreen.main.bounds)
    }
    
    
    private func useCaseInit() {
        let recipeDetailRepository: RecipeDetailRepositoryProtocol = RecipeDetailRepository()
        recipeDetailUseCase = RecipeDetailUseCase(recipeDetailRepository: recipeDetailRepository)
    }
    
    
    private func getRecipeDetail() {
        guard let useCase = self.recipeDetailUseCase, let id = self.idRecipe else {
            self.errorManager(error: NetworkError.internalError)
            return
        }
        
        useCase.execute(id: id)
        .map { $0 }
            .sink(receiveCompletion: { _ in }) { print("id: \($0.id),\n version: \($0.instructions)") }
//            .sink(receiveCompletion: { _ in }) {
//                self.recipeTitle.text = $0.title
//                self.descriptionLabel.text = $0.instructions
//
//              }
        .store(in: &publishers)
    }

}
