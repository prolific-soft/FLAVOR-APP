//
//  CategoryOpenTableViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/26/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class CategoryOpenTableViewCell: UITableViewCell {

    
    @IBOutlet weak var recipeView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        recipeView.layer.cornerRadius = 4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
