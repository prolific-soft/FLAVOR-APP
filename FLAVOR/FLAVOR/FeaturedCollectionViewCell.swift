//
//  FeaturedCollectionViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/29/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    
    //UI Properties
    @IBOutlet weak var recipeImage: UIImageView!
    
    
    //Sets the image with a given recipe
    func setRecipeImage(recipe: Recipe) {
        recipeImage.image = recipe.image
    }
    
}
