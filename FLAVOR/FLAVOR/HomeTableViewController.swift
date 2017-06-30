//
//  HomeTableViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/21/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    
    //Properties
    var latestRecipe: [Recipe]!
    var featuredRecipe: [Recipe]!
    var sections = ["FEATURED RECIPES", "LATEST"]
    let featureCellReuseIdentfier = "FeaturedCell"
    let latestCellReuseIdentifier = "LatestCell"

    //First loading function
    override func viewDidLoad() {
        super.viewDidLoad()
        latestRecipe = RecipeList().loadRecipe()
        featuredRecipe = latestRecipe
        //featuredRecipeCollectionView.backgroundColor = UIColor(hexString: "AAAAAA", withAlpha: 0.5)
    }



    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? featuredRecipe!.count : latestRecipe!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: featureCellReuseIdentfier, for: indexPath) as! FeaturedTableViewCell
            return cell
            
        }else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: latestCellReuseIdentifier, for: indexPath) as! LatestTableViewCell
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




























