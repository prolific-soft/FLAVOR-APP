//
//  HomeTableViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/21/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    //UI Properties
    @IBOutlet weak var featuredRecipeCollectionView: UICollectionView!
    
    //Properties
    let latestCellReuseIdentifier = "LatestCell"
    var latestRecipe: [Recipe]?
    var featuredRecipe: [Recipe]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        latestRecipe = RecipeList().loadRecipe()
        featuredRecipe = latestRecipe
        
        featuredRecipeCollectionView.backgroundColor = UIColor(hexString: "AAAAAA", withAlpha: 0.5)
    }



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return latestRecipe!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: latestCellReuseIdentifier, for: indexPath) as! LatestRecipeTableViewCell

        cell.setUpProperties(recipe: (latestRecipe?[indexPath.row])!)

        return cell
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

extension HomeTableViewController: UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! FeaturedRecipesCollectionViewCell
        
        return cell
        
    }
    
    
    
    
}



























