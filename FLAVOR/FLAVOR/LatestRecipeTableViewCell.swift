//
//  LatestTableViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/21/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class LatestRecipeTableViewCell: UITableViewCell {

    //UI Properties
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var diffucultyLabel: UILabel!
    @IBOutlet weak var servingLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    //First loading function
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //Sets up the view properties with the
    //provided recipe
    func setUpProperties(recipe: Recipe){
        recipeNameLabel.text = recipe.name!
        timeLabel.text = String("\(recipe.timeToMake!) minutes")
        diffucultyLabel.text = recipe.difficulty!
        servingLabel.text = String("\(recipe.serving!) people")
        categoryLabel.text = recipe.category!.uppercased()
    }

}
