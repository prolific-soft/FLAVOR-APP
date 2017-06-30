//
//  FeaturedTableViewCell.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/29/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class FeaturedTableViewCell: UITableViewCell {

    //Variables
    var featuredRecipes: [Recipe]!
    var featuredCollectionCellReuseIdentifier = "FeaturedCollectionCell"
    
    //UI Properties
    @IBOutlet weak var featuredCollectionView: UICollectionView!
    
    //First Loading Function
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    //Sets selected item upon clicked
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    //Get loaded with recipes
    func loadRecipeList(recipes: [Recipe]) {
        featuredRecipes = recipes
    }

}

//CollectionView DataSource Setup
extension FeaturedTableViewCell: UICollectionViewDataSource {
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return featuredRecipes.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = featuredCollectionView.dequeueReusableCell(withReuseIdentifier: featuredCollectionCellReuseIdentifier, for: indexPath) as! FeaturedCollectionViewCell
        cell.setRecipeImage(recipe: featuredRecipes[indexPath.row]) //Gives cell Recipes so it can set up the image itself
        
        return cell
        
    }
    
    
}
