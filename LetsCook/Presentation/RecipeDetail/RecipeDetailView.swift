//
//  RecipeDetailView.swift
//  LetsCook
//
//  Created by Juan Florez on 23/08/20.
//  Copyright © 2020 Juan Florez. All rights reserved.
//

import Foundation
import UIKit

class RecipeDetailView: UIView {
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        configurarVistas()
        configurarConstraints()
        
    }
    
    func configurarVistas() {
        self.addSubview(toolbarView)
        
        toolbarView.addSubview(titleLabel)
        self.addSubview(imageRecipe)
        
        self.addSubview(stackViewRating)
        stackViewRating.addArrangedSubview(starImage1)
        stackViewRating.addArrangedSubview(starImage2)
        stackViewRating.addArrangedSubview(starImage3)
        stackViewRating.addArrangedSubview(starImage4)
        stackViewRating.addArrangedSubview(starImage5)
        
        self.addSubview(descriptionLabel)
    }
    
    func configurarConstraints() {
        let margins = self.safeAreaLayoutGuide
        toolbarViewConstraint(margin: margins)
        titleConstraint()
        imageConstraint()
        stackViewConstraint()
        descriptionLabelConstraint()
        startsConstraint()
        
    }
    
    //MARK: Constraints
    
    private func toolbarViewConstraint(margin: UILayoutGuide) {
        toolbarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            toolbarView.topAnchor.constraint(equalTo: margin.topAnchor, constant: 0),
            toolbarView.trailingAnchor.constraint(equalTo: margin.trailingAnchor, constant: 0),
            toolbarView.leadingAnchor.constraint(equalTo: margin.leadingAnchor, constant: 0),
            toolbarView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func titleConstraint() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: toolbarView.centerXAnchor, constant: 0),
            titleLabel.centerYAnchor.constraint(equalTo: toolbarView.centerYAnchor, constant: 0)
        ])
    }
    
    private func imageConstraint() {
        imageRecipe.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageRecipe.topAnchor.constraint(equalTo: toolbarView.bottomAnchor, constant: 0),
            imageRecipe.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imageRecipe.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imageRecipe.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func stackViewConstraint() {
        stackViewRating.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackViewRating.topAnchor.constraint(equalTo: imageRecipe.bottomAnchor, constant: 0),
            stackViewRating.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            stackViewRating.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            stackViewRating.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func descriptionLabelConstraint() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            
            descriptionLabel.topAnchor.constraint(equalTo: stackViewRating.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8)
        ])
    }
    
    private func startsConstraint() {
        let stars: [UIImageView] = [starImage1, starImage2, starImage3, starImage4, starImage5]
        
        for star in stars {
            star.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               star.heightAnchor.constraint(equalToConstant: CGFloat(40)),
               star.widthAnchor.constraint(equalToConstant: CGFloat(40))
            ])
        }
    }
    
    
    //MARK: Componentes
    
    lazy var toolbarView: UIView = {
        let toolbarView = UIView()
        toolbarView.backgroundColor = UIColor(red: 248.0/255.0, green: 152.0/255.0, blue: 26.0/255.0, alpha: 1)
        return toolbarView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Healthy Black Forest Baked Oatmeal"
        label.textColor = .white
        return label
    }()
    
    lazy var imageRecipe: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "logo")
        return image
    }()
    
    lazy var stackViewRating: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 8
        
        return stackView
    }()
    
    lazy var starImage1: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "unfilled_star")
        return image
    }()
    
    lazy var starImage2: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "unfilled_star")
        return image
    }()
    
    lazy var starImage3: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "unfilled_star")
        return image
    }()
    
    lazy var starImage4: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "unfilled_star")
        return image
    }()
    
    lazy var starImage5: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "unfilled_star")
        return image
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.numberOfLines = 0
        label.text = "Preheat oven to 375. Combine all ingredients in a medium bowl. Spray a muffin tin with cooking oil. Fill the tin to the top with oats. It should make about six  eight oatmeal cakes. Bake uncovered for 20 minutes. For a light crust, broil for an additional 3-5 minutes until lightly browned. Serve on its own or with fresh fruit, yogurt, or milk."
        return label
    }()
    
}
