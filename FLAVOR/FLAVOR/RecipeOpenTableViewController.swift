//
//  RecipeOpenTableViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/27/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class RecipeOpenTableViewController: UITableViewController {

    var testRecipe: Recipe!
    var ingredients: [String]!
    var instructions: [String]!
    
    let sections = ["INGREDIETS", "INSTRUCTIONS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testRecipe = RecipeList().loadGoodRecipe()
        
        //let testRecipeList = RecipeList().loadRecipe()
        //testRecipe = testRecipeList[8]
        
        ingredients = testRecipe.ingredients
        instructions = testRecipe.instructions
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? ingredients.count : instructions.count
        //return 0
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        /*let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "xibheader") as! HomeTableViewHeaderView
         */
        
        let headerXib = Bundle.main.loadNibNamed("recipeHeaderView", owner: self, options: nil)?.first as! RecipeHeaderView
        headerXib.contentView.backgroundColor = UIColor(hexString: "E6E6E6")
        
        
        switch section {
        case 0:
            headerXib.headerLabel.text = sections[section].uppercased()
        case 1:
            headerXib.headerLabel.text = sections[section]
        default:
            headerXib.headerLabel.text = "No Section"
        }
        
        return headerXib
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeIngredientCell", for: indexPath) as! RecipeOpenTableViewCell
            
            cell.setIngredientLabel(ingredient: testRecipe.ingredients[indexPath.row])
            
            return cell
        }else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeInstructionCell", for: indexPath) as! RecipeInstructionTableViewCell
            cell.setInstructionLabel(instruction: testRecipe.instructions[indexPath.row], index: indexPath.row + 1)
            return cell
            
        }

    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
