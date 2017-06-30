//
//  LatestTableViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/29/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class LatestTableViewCell: UITableViewCell {

    
    //UI Properties
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var difficultyLabel: UILabel!
    @IBOutlet weak var servingLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    
    
    //First loaded function
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //Set up all the view
    func setUpView(recipe: Recipe){
        backView.layer.cornerRadius = 40
        categoryLabel.text = recipe.category
        recipeNameLabel.text = recipe.name
        timeLabel.text = String("\(recipe.timeToMake) minutes")
        difficultyLabel.text = recipe.difficulty
        servingLabel.text = String("\(recipe.serving) people")
        recipeImage.image = recipe.image
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
