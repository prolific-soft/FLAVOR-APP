//
//  RecipeInstructionTableViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/29/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class RecipeInstructionTableViewCell: UITableViewCell {

    //UI Properties
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var instructionNumberLabel: UILabel!
    
    //First loading function
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    //Set instructions with number
    func setInstructionLabel(instruction: String, index: Int) {
        instructionLabel.text = instruction
        instructionNumberLabel.text = String(index)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
