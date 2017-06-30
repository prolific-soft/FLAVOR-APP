//
//  RecipeOpenTableViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/27/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class RecipeOpenTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var ingredientLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    //Set ingredient label
    func setIngredientLabel(ingredient: String) {
        ingredientLabel.text = ingredient
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
