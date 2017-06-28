//
//  CategoryTableViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/26/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    var recipe : [Recipe]!
    let categoryCellReuseIdentifier = "CategoryCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         recipe = RecipeList().loadRecipe()
         //self.tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: categoryCellReuseIdentifier)
        
        //Transparent Navigation Bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipe.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: categoryCellReuseIdentifier, for: indexPath) as! CategoryTableViewCell

       cell.categoryNameLabel.text = recipe[indexPath.row].category.uppercased()
        
        //print(recipe[indexPath.row].category)

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
