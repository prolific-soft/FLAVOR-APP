//
//  FeaturedCollectionViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/30/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    
   //UI Properties
    @IBOutlet weak var recipeImageView: UIImageView!

    //First load func
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 4
    }
    
    //Setup the UI 
    func setUp(recipe: Recipe){
        recipeImageView.image = recipe.image
    }
    
}
