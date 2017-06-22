//
//  FeaturedRecipesCollectionViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/22/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class FeaturedRecipesCollectionViewCell: UICollectionViewCell {
    
    //UI properties
    @IBOutlet weak var recipeImage: UIImageView!
    
    
    //Set image with recipe category
    func setImage(recipe: Recipe){
        recipeImage.image = recipe.image!
    }
    
}
