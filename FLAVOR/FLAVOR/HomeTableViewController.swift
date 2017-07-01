//
//  HomeTableViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/30/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    //Properties
    let featuredRecipeCellReuseIdentifier = "FeaturedRecipeCell"
    let latestRecipeCellReuseIdentifier = "LatestRecipeCell"
    let sections = ["FEATURED RECIPE", "LATEST"]
    
    var recipes: [Recipe]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        recipes = RecipeList().loadGoodRecipe()
    }

    //Create the section header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionHeader = Bundle.main.loadNibNamed("homeTableViewHeader", owner: self, options: nil)?.first as! HomeTableViewHeaderView
        sectionHeader.headerLabel.text = sections[section]
        sectionHeader.contentView.backgroundColor = UIColor(hexString: "999999")
        return sectionHeader
    }
    
    //The height of each section header
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 35 : 43
    }

    // MARK: - Table view data source

    //Number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    //Number of rows in section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : recipes.count
    }

    //Height of section
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 135 : 232
    }
    
    //Cell for each section
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let featuredRecipeCell = tableView.dequeueReusableCell(withIdentifier: featuredRecipeCellReuseIdentifier, for: indexPath) as! FeaturedRecipeTableViewCell
            featuredRecipeCell.loadRecipes(recipes: recipes)
            return featuredRecipeCell
            
        }else {
            
            let latestRecipeCell = tableView.dequeueReusableCell(withIdentifier: latestRecipeCellReuseIdentifier, for: indexPath) as! LatestRecipeTableViewCell
            latestRecipeCell.setUp(recipe: recipes[indexPath.row])
            
            return latestRecipeCell
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
